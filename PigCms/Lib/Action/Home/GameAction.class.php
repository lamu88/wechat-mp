<?php

	class GameAction extends BaseAction
	{
		public $token;
		public $gameConfig;
		public $uid;

		public function _initialize ()
		{
			parent::_initialize();
			$this->uid = intval($_GET['uid']);
			$this->gameConfig = M('Game_config')->where(array('uid' => $this->uid))->find();
			$this->token = $this->gameConfig['token'];
			//
		}

		public function gamearr ()
		{
			if ($this->_post('uuu') == 2) {
				$jsonStrs = '{';
				if (S('game_' . $this->_post('token') . '_' . $this->_post('id'))) {
					$comma = '';
					foreach (S('game_' . $this->_post('token') . '_' . $this->_post('id')) as $key => $value) {
						$jsonStrs .= $comma . '"' . $key . '":"' . $value . '"';
						$comma = ',';
					}
				}
				$jsonStrs .= '}';
				echo $jsonStrs;
			}
		}

		public function tel ()
		{
			$wecha_id = $this->_post('wecha_id');
			$phone = $this->_post('phone');
			$data['tel'] = $phone;
			M('Userinfo')->where(array('wecha_id' => $wecha_id))->save($data);
		}

		function api_playuser ()
		{
			$wecha_id = $_GET['openid'];
			$score = $_GET['score'];
			$gameid = intval($_GET['gameid']);

			if ($_GET['key'] == $this->gameConfig['key']) {
				$data = array(
					'token'    => $this->token,
					'gameid'   => $gameid,
					'wecha_id' => $wecha_id,
					'score'    => $score,
					'time'     => time()
				);
				M('game_records')->add($data);
			}
		}

		function api_playcount ()
		{
			if ($_GET['key'] == $this->gameConfig['key']) {
				M('games')->where(array('id' => intval($_GET['gameid'])))->setInc('playcount');
			}
		}

		function api_user_game ()
		{
			$uid = $this->_post('uid', 'intval');
			$key = $this->_post('key', 'trim');
			$wxid = $this->_post('wxid', 'trim');
			$where = array('uid' => $uid);

			$conf = M('Game_config')->where($where)->find();

			if (empty($conf)) {
				echo '{"success":"-1","msg":"uid not exist"}';
				exit();
			}

			if ($conf['key'] != $key) {
				echo '{"success":"-2","msg":"key error"}';
				exit();
			}

			$list = M('Games')->where(array('token' => $conf['token']))->field('id as ugameid,gameid,time,intro,token')->select();
			$game = array();
			foreach ($list as $key => $value) {
				$where = array('token' => $value['token'], 'gameid' => $value['ugameid']);
				$value['score_max'] = M('Game_records')->where($where)->max('score');
				$user = M('Game_records')->where($where)->group('wecha_id')->getField('id');
				$value['user_count'] = count($user);
				$game[$value['gameid']] = $value;
			}
			echo json_encode($game);
		}

		function api_game_record ()
		{
			$uid = $this->_post('uid', 'intval');
			$key = $this->_post('key', 'trim');
			$gid = $this->_post('gid', 'trim');

			$where = array('uid' => $uid);

			$conf = M('Game_config')->where($where)->find();

			if (empty($conf)) {
				echo '{"success":"-1","msg":"uid not exist"}';
				exit();
			}

			if ($conf['key'] != $key) {
				echo '{"success":"-2","msg":"key error"}';
				exit();
			}

			$data = array(
				'token'    => $conf['token'],
				'gameid'   => $this->_post('gid', 'intval'),
				'wecha_id' => $this->_post('openid', 'trim'),
				'uid'      => $uid,
				'u_game_id' => $this->_post('ugid', 'intval'),
			);
			$max_score = M('Game_records')->field('id,score')->where($data)->order('score DESC')->find();
			if ($max_score) {
				$score = (float) $this->_post('score', 'trim');
				if ($score > $max_score['score']) {
					M('Game_records')->where($data)->save(array('score' => $score, 'time' => time()));
				}

				echo '{"success":"1","msg":"record ok"}';
				exit();
			} else {
				$data['score'] = (float) $this->_post('score', 'trim');
				$data['time'] = time();
				if (M('Game_records')->add($data)) {
					echo '{"success":"1","msg":"record ok"}';
					exit();
				}
			}
		}

		function getCouponCount ()
		{
			$cardId = $this->_post('card_id', 'intval');

			$couponData = M('Member_card_coupon')->where(['card_id' => $cardId])->find();

			echo json_encode(['total' => $couponData['total']]);
		}

		function getConvertData ()
		{
			$uid = $this->uid;
			$gameId = $this->_post('game_id', 'intval');
			$uGameId = $this->_post('u_game_id', 'intval');
			$fansId = $this->_post('fans_id', 'intval');

			$data = [
				'status' => 0,
			];

			$convertData = D('Game_convert')->field('convert_code, is_use, awards_level')->where(['uid' => $uid, 'game_id' => $gameId, 'u_game_id' => $uGameId, 'fans_id' => $fansId])->find();

			if (!empty($convertData)) {
				$data = [
					'status'        => 1,
					'convert_level' => $convertData['awards_level'],
					'convert_code'  => $convertData['convert_code'],
					'is_use'        => $convertData['is_use'],
//					'qr_code'       => $this->getQrcode($convertData['convert_code']),
				];
			}

			echo json_encode($data);
		}

		function createConvertData ()
		{
			$uid = $this->uid;
			$gameId = $this->_post('game_id', 'intval');
			$uGameId = $this->_post('u_game_id', 'intval');
			$fansIds = unserialize(htmlspecialchars_decode($_POST['fans_ids']));

			foreach ($fansIds as $fansInfo) {
				$convertData = D('Game_convert')->where(['uid' => $uid, 'game_id' => $gameId, 'u_game_id' => $uGameId, 'fans_id' => $fansInfo['fans_id']])->find();

				if (empty($convertData)) {
					$convertCode = $this->createConvertCode();

					$data = [
						'uid'          => $uid,
						'game_id'      => $gameId,
						'u_game_id'    => $uGameId,
						'fans_id'      => $fansInfo['fans_id'],
						'convert_code' => $convertCode,
						'awards_level' => $fansInfo['level'],
						'is_use'       => 0,
						'create_time'  => date('Y-m-d H:i:s'),
					];

					D('Game_convert')->add($data);
				}
			}

			echo json_encode(['status' => 1]);
		}

		/**
		 * @param int $len
		 *
		 * @return string
		 */
		private function createConvertCode ($len = 12)
		{
			$str = '';
			$randString = "0123456789";

			$max = strlen($randString) - 1;
			for ($i = 0; $i < $len; $i++) {
				$str .= $randString[rand(0, $max)];
			}

			if (D('Game_convert')->isValideCode($str)) {
				return $str;
			} else {
				return $this->createConvertCode();
			}
		}

		public function getQrcode ($kword)
		{
			$recdb = M('Recognition');
			$recognis = $recdb->where(array('keyword' => $kword, 'token' => $this->token))->find();
			$this->thisWxUser = M('Wxuser')->where(array('token' => $this->token))->find();
			$apiOauth = new apiOauth();
			$this->access_token = $apiOauth->update_authorizer_access_token($this->thisWxUser['appid']);
			if ($recognis != '') {
				if ($recognis['code_url'] == '') {
					$qrcode_url = 'https://api.weixin.qq.com/cgi-bin/qrcode/create?access_token=' . $this->access_token;
					$data['action_name'] = 'QR_LIMIT_SCENE';
					$data['action_info']['scene']['scene_id'] = $recognis['id'];
					$post = $this->api_notice_increment($qrcode_url, json_encode($data));
					$recdb->where(array_merge(array('id' => $recognis['id'])))->save(array('code_url' => $post));
					$wxqr = ('https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=' . $recognis['code_url']);
				} else {
					$wxqr = ('https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=' . $recognis['code_url']);
				}
			} else {
				$dataz['keyword'] = $kword;
				$dataz['title'] = $kword;
				$dataz['token'] = $this->token;
				$xid = $recdb->add($dataz);
				$qrcode_url = 'https://api.weixin.qq.com/cgi-bin/qrcode/create?access_token=' . $this->access_token;
				$data['action_name'] = 'QR_LIMIT_SCENE';
				$data['action_info']['scene']['scene_id'] = $xid;
				$post = $this->api_notice_increment($qrcode_url, json_encode($data));
				$recdb->where(array_merge(array('id' => $xid)))->save(array('code_url' => $post));
				$wxqr = ('https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=' . $post);
			}

			return $wxqr;
		}

		function api_notice_increment ($url, $data)
		{
			$ch = curl_init();
			$header = "Accept-Charset: utf-8";
			curl_setopt($ch, CURLOPT_URL, $url);
			curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");
			curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
			curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);
			curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
			curl_setopt($ch, CURLOPT_USERAGENT, 'Mozilla/5.0 (compatible; MSIE 5.01; Windows NT 5.0)');
			curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
			curl_setopt($ch, CURLOPT_AUTOREFERER, 1);
			curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
			curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
			$tmpInfo = curl_exec($ch);
			$errorno = curl_errno($ch);
			if ($errorno) {
				$this->error('发生错误：curl error' . $errorno);

			} else {

				$js = json_decode($tmpInfo, true);

				if (isset($js['ticket'])) {
					return $js['ticket'];
				} else {
					$this->error('发生错误：错误代码' . $js['errcode'] . ',微信返回错误信息：' . $js['errmsg']);
				}
			}
		}
	}


?>