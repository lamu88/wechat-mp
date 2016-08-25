<?php

/**
 * **外卖后台处理控制器
 * **LiHongShun
 * **2015-01-10
 * */
class DishOutAction extends UserAction {

    public $_cid = 0;

    public function _initialize() {
        parent::_initialize();
        $this->canUseFunction('DishOut');
        $checkFunc = new checkFunc();
        if (!function_exists('fdsrejsie3qklwewerzdagf4ds')) {
            exit('error-4');
        }
        $checkFunc->cfdwdgfds3skgfds3szsd3idsj();
        $this->_cid = session('companyid') > 0 ? session('companyid') : intval($_GET['cid']);
        $this->_cid = $this->_cid > 0 ? $this->_cid : 0;
        if (empty($this->token)) {
            $this->error('不合法的操作', U('Index/index'));
        }
        if (empty($this->_cid)) {
            $company = M('Company')->where(array('token' => $this->token, 'isbranch' => 0))->find();
            if ($company) {
                $this->_cid = $company['id'];
                //主店的k存session
                session('companyk', md5($this->_cid . session('uname')));
            } else {
                $this->error('您还没有添加您的商家信息', U('Company/index', array('token' => $this->token)));
            }
        } else {
            $k = session('companyk');
            $company = M('Company')->where(array('token' => $this->token, 'id' => $this->_cid))->find();
            if (empty($company)) {
                $this->error('非法操作', U('Repast/index', array('token' => $this->token)));
            } else {
                $username = $company['isbranch'] ? $company['username'] : session('uname');
                if (md5($this->_cid . $username) != $k) {
                    $this->error('非法操作', U('Repast/index', array('token' => $this->token)));
                }
            }
        }
        $this->assign('ischild', session('companyLogin'));
        $this->assign('cid', $this->_cid);
    }

    /**
     * 外卖菜的列表
     */
    public function index() {
        $data = M('Dish');
        $where = array('cid' => $this->_cid, 'istakeout' => 1);
        $count = $data->where($where)->count();
        $Page = new Page($count, 20);
        $show = $Page->show();
        $dish = $data->where($where)->limit($Page->firstRow . ',' . $Page->listRows)->select();
        $list = $sortList = array();
        $sort = M('Dish_sort')->where(array('cid' => $this->_cid))->select();
        foreach ($sort as $row) {
            $sortList[$row['id']] = $row;
        }
        foreach ($dish as $r) {
            $r['sortName'] = isset($sortList[$r['sid']]['name']) ? $sortList[$r['sid']]['name'] : '';
            $list[] = $r;
        }
        $this->assign('page', $show);
        $this->assign('list', $list);
        $this->display();
    }

    /**
     * 对菜品的操作
     */
    public function dishedit() {
        $dataBase = D('Dish');
        $dish_sort = M('Dish_sort');
        if (IS_POST) {
            $id = isset($_POST['id']) ? intval($_POST['id']) : 0;
            $_POST['ishot'] = isset($_POST['ishot']) ? intval($_POST['ishot']) : 0;
            $_POST['isopen'] = isset($_POST['isopen']) ? intval($_POST['isopen']) : 0;
            $_POST['istakeout'] = isset($_POST['istakeout']) ? intval($_POST['istakeout']) : 0;
            if ($id) {//edit
                if ($dataBase->create() !== false) {
                    $temp = M('Dish')->where(array('cid' => $this->_cid, 'id' => $id))->find();
                    $action = $dataBase->save();
                    if ($action != false) {
                        if ($temp['sid'] != $_POST['sid']) {
                            $dish_sort->where(array('id' => $_POST['sid'], 'cid' => $this->_cid))->setInc('num', 1);
                            $dish_sort->where(array('id' => $temp['sid'], 'cid' => $this->_cid))->setDec('num', 1);
                        }
                        $this->success('修改成功', U('DishOut/index', array('token' => $this->token, 'cid' => $this->_cid)));
                    } else {
                        $this->success('修改成功', U('DishOut/index', array('token' => $this->token, 'cid' => $this->_cid)));
                        //$this->error('操作失败');
                    }
                } else {
                    $this->error($dataBase->getError());
                }
            } else {
                $this->error('操作失败');
            }
        } else {
            $id = isset($_GET['id']) ? intval($_GET['id']) : 0;
            $dishSort = M('Dish_sort')->where(array('cid' => $this->_cid))->select();
            if (empty($dishSort)) {
                $this->redirect(U('Repast/sortadd', array('token' => $this->token, 'cid' => $this->_cid)));
            }
            $findData = $dataBase->where(array('id' => $id, 'cid' => $this->_cid))->find();
            $this->assign('tableData', $findData);
            $this->assign('dishSort', $dishSort);
            $this->display();
        }
    }

    /**
     * 外送时间管理
     */
    public function manageTime() {
        $db_dotime = M('dishout_manage');
        if (IS_POST) {
            $zc_sdate = $this->_post("zc_sdate", 'trim');
            $zc_edate = $this->_post("zc_edate", 'trim');
            $wc_sdate = $this->_post("wc_sdate", 'trim');
            $wc_edate = $this->_post("wc_edate", 'trim');
             
            $permin = intval($this->_post("permin", 'trim'));
            $removing = $this->_post("removing", 'trim');
            $area = htmlspecialchars($this->_post("area", 'trim'), ENT_QUOTES);
            $sendtime = intval($this->_post("sendtime", 'trim'));
            $simage = $this->_post("simage");
            $tourl = $this->_post("tourl");
            $simage = array('img' => $simage, 'tourl' => $tourl);

            $tid = intval($this->_post("tid", 'trim'));
            $data['zc_sdate'] = !empty($zc_sdate) ? strtotime(date("Y-m-d ") . $zc_sdate) : 0;
            $data['zc_edate'] = !empty($zc_edate) ? strtotime(date("Y-m-d ") . $zc_edate) : 0;
            $data['wc_sdate'] = !empty($wc_sdate) ? strtotime(date("Y-m-d ") . $wc_sdate) : 0;
            $data['wc_edate'] = !empty($wc_edate) ? strtotime(date("Y-m-d ") . $wc_edate) : 0;
             
            if (($data['zc_edate'] > 0) && ($data['zc_sdate'] >= $data['zc_edate'])) {
                $this->error('第一段营业结束时间必须大于第一段开始时间!');
            }
           if (($data['wc_edate'] > 0) && ($data['wc_sdate'] >= $data['wc_edate'])) {
                $this->error('第二段营业结束时间必须大于第二段开始时间!');
            }
            $data['permin'] = ($permin > 0) ? $permin : 15;
            if ($data['permin'] < 5 || $data['permin'] > 60) {
                $this->error('请将外卖送达时间间隔值设置在5-60范围内!');
            }
            $data['removing'] = $removing < 250 ? $removing : 250;
            $data['sendtime'] = $sendtime < 250 ? $sendtime : 250;
            $data['area'] = $area;
            $data['shopimg'] = serialize($simage);
            $data['overflow_radius'] = intval($_POST['overflow_radius']);
            $data['priceup'] = intval(($_POST['priceup']*100));
            $data['delivery_fee'] = intval(($_POST['delivery_fee']*100));
            $data['discount'] = round(($_POST['discount']),1);
            if ($tid > 0) {//edit
                $action = $db_dotime->where(array('id' => $tid, 'cid' => $this->_cid, 'token' => $this->token))->save($data);
                //if ($action != false) {
                $this->success('修改成功', U('DishOut/manageTime', array('token' => $this->token, 'cid' => $this->_cid)));
                //}
            } else {//add
                $data['cid'] = $this->_cid;
                $data['token'] = $this->token;
                $action = $db_dotime->add($data);
                if ($action != false) {
                    $this->success('保存成功', U('DishOut/index', array('token' => $this->token, 'cid' => $this->_cid)));
                } else {
                    $this->error('保存失败', U('DishOut/manageTime', array('token' => $this->token, 'cid' => $this->_cid)));
                }
            }
        } else {
            $tmp = $db_dotime->where(array('cid' => $this->_cid, 'token' => $this->token))->find();
            $shopimg = unserialize($tmp['shopimg']);
            unset($tmp['shopimg']);
            $this->assign('mtime', $tmp);
            $this->assign('simage', $shopimg);
            $this->display();
        }
    }

    /**
     * 外卖起送管理
     */
    public function basePrice() {
        $db_dotime = M('dishout_manage');
        if (IS_POST) {
            $stype = intval($this->_post("stype", 'trim'));
            $pricing = intval($this->_post("pricing", 'trim'));
            $tid = intval($this->_post("tid", 'trim'));
            $data['stype'] = $stype > 0 ? $stype : 1;
            $data['pricing'] = $pricing > 0 ? $pricing : 0;
            if ($tid > 0) {//edit
                $action = $db_dotime->where(array('id' => $tid, 'cid' => $this->_cid, 'token' => $this->token))->save($data);
                //if ($action != false) {
                $this->success('修改成功', U('DishOut/basePrice', array('token' => $this->token, 'cid' => $this->_cid)));
                //}
            } else {//add
                $data['cid'] = $this->_cid;
                $data['token'] = $this->token;
                $action = $db_dotime->add($data);
                if ($action != false) {
                    $this->success('保存成功', U('DishOut/index', array('token' => $this->token, 'cid' => $this->_cid)));
                } else {
                    $this->error('保存失败', U('DishOut/basePrice', array('token' => $this->token, 'cid' => $this->_cid)));
                }
            }
        } else {
            $tmp = $db_dotime->where(array('cid' => $this->_cid, 'token' => $this->token))->find();
            $this->assign('mtime', $tmp);
            $this->display();
        }
    }

    /**
     * 自定义回复设置
     */
    public function myReply() {
        $db_dotime = M('dishout_manage');
        if (IS_POST) {
            $data['keyword'] = htmlspecialchars($this->_post("keyword", 'trim'), ENT_QUOTES);
            $data['rtitle'] = htmlspecialchars($this->_post("rtitle", 'trim'), ENT_QUOTES);
            $data['rinfo'] = htmlspecialchars($this->_post("rinfo", 'trim'), ENT_QUOTES);
            $data['picurl'] = htmlspecialchars($this->_post("picurl", 'trim'), ENT_QUOTES);
            $tid = intval($this->_post("tid", 'trim'));
            if ($tid > 0) {//edit
                $action = $db_dotime->where(array('id' => $tid, 'cid' => $this->_cid, 'token' => $this->token))->save($data);
                $this->handleKeyword($tid, 'DishOut', $data['keyword']);
                //if ($action != false) {
                $this->success('修改成功', U('DishOut/myReply', array('token' => $this->token, 'cid' => $this->_cid)));
                //}
            } else {//add
                $data['cid'] = $this->_cid;
                $data['token'] = $this->token;
                $insert_id = $db_dotime->add($data);
                if ($insert_id > 0) {
                    $this->handleKeyword($insert_id, 'DishOut', $data['keyword']);
                    $this->success('保存成功', U('DishOut/index', array('token' => $this->token, 'cid' => $this->_cid)));
                } else {
                    $this->error('保存失败', U('DishOut/myReply', array('token' => $this->token, 'cid' => $this->_cid)));
                }
            }
        } else {
            $tmp = $db_dotime->where(array('cid' => $this->_cid, 'token' => $this->token))->find();
            if (is_array($tmp) && !empty($tmp)) {
                $tmp['keyword'] = htmlspecialchars_decode($tmp['keyword'], ENT_QUOTES);
                $tmp['rtitle'] = htmlspecialchars_decode($tmp['rtitle'], ENT_QUOTES);
                $tmp['rinfo'] = htmlspecialchars_decode($tmp['rinfo'], ENT_QUOTES);
                $tmp['picurl'] = htmlspecialchars_decode($tmp['picurl'], ENT_QUOTES);
            } else {
                $tmp['keyword'] = '外卖';
                $tmp['rtitle'] = '微信外卖';
                $tmp['rinfo'] = '';
                $tmp['picurl'] = $this->staticPath . '/tpl/static/dishout/image/wxdishout.jpg';
            }
            $this->assign('mtime', $tmp);
            $this->display();
        }
    }

    /**
     * 订单列表
     */
    public function orders() {
        $status = $this->_get('status') ? intval($this->_get('status', 'trim')) : 0;
        $t = $this->_get('t') ? intval($this->_get('t', 'trim')) : 0;
        $fd = $this->_get('fd') ? $this->_get('fd', 'trim') : '';
        $ischild = session('companyLogin');
        $ischild = $ischild ? intval($ischild) : 0;
        $dish_order = M('Dish_order');
        $fstatus = 0;
        $pstatus = 0;
        $falg = false;
        if (($ischild != 1) && ($fd == 'on')) {
            $companys = M('Company')->where("token ='{$this->token}' AND (`isbranch`=1 AND `display`=1)")->field('id,token,name')->select();
            $Cyarrs = array();
            $cidsarr = '';
            if (!empty($companys)) {
                foreach ($companys as $vv) {
                    $Cyarrs[$vv['id']] = $vv;
                }
                $cidsarr = array_keys($Cyarrs);
                $where = 'd.token="' . $this->_session('token') . '" AND d.cid in(' . implode(',', $cidsarr) . ') AND d.comefrom="dishout"';
                switch ($status) {
                    case 1:
                        if ($t == 1) {
                            $where.=' AND d.paid="0"';
                            $pstatus = 1;
                        } elseif ($t == 2) {
                            $where.=' AND d.isuse="0"';
                            $fstatus = 1;
                        }
                        break;
                    case 2 :
                        if ($t == 1) {
                            $where.=' AND d.paid=1';
                            $pstatus = 2;
                        } elseif ($t == 2) {
                            $where.=' AND d.isuse=1';
                            $fstatus = 2;
                        }
                        break;
                    default:
                        break;
                }
            }
            $falg = true;
            $this->assign('companys', $Cyarrs);
        } else {
            $where = array('d.token' => $this->_session('token'), 'd.cid' => $this->_cid, 'd.comefrom' => 'dishout', 'd.isdel' => 0);
            switch ($status) {
                case 1:
                    if ($t == 1) {
                        $where['d.paid'] = 0;
                        $pstatus = 1;
                    } elseif ($t == 2) {
                        $where['d.isuse'] = 0;
                        $fstatus = 1;
                    }
                    break;
                case 2 :
                    if ($t == 1) {
                        $where['d.paid'] = 1;
                        $pstatus = 2;
                    } elseif ($t == 2) {
                        $where['d.isuse'] = 1;
                        $fstatus = 2;
                    }
                    break;
                default:
                    break;
            }
        }

        $count = !empty($where) ? $dish_order->alias('d')->where($where)->count() : 0;
        $Page = new Page($count, 20);
        $show = $Page->show();
        $orders = !empty($where) ? $dish_order->alias('d')->where($where)->join( C('DB_PREFIX').'coupon_pay_record as c ON d.wecha_id = c.wechat_id AND d.orderid = c.orderid AND c.from = "DishOut" AND c.dateline >0')->order('id DESC')->limit($Page->firstRow . ',' . $Page->listRows)->field('d.*,c.reduce_cost')->select() : false;
        $this->assign('orders', $orders);
        $this->assign('status', $pstatus);
        $this->assign('fstatus', $fstatus);
        $this->assign('page', $show);
        if ($falg) {
            $this->display('fdorders');
        } else {
            $this->display();
        }
    }

    /*     * **************
     * *保存菜品销售情况
     * *Dishout_salelog表
     * ************** */

    public function saleLog($data) {
        $log_db = M('Dishout_salelog');
        $tmplog = $log_db->where(array('order_id' => $data['oid']))->find();
        if (!empty($tmplog)) {
            return false;
        }
        $Dishcompany = M('Dish_company')->where(array('cid' => $data['cid']))->find();
        $kconoff = $Dishcompany['kconoff'];
        unset($Dishcompany);
        $tmparr = array('token' => $this->token, 'cid' => $data['cid'], 'order_id' => $data['oid'], 'paytype' => $data['paytype']);
        $mDishSet = $this->getDishMainCompany($this->token);
        if (!empty($data['dish'])) {
            $DishDb = M('Dish');
            foreach ($data['dish'] as $kk => $vv) {
                $did = isset($vv['did']) ? $vv['did'] : $kk;
                $dishofcid = $data['cid'];
                if (($mDishSet['cid'] != $data['cid']) && ($mDishSet['dishsame'] == 1)) {
                    $dishofcid = $mDishSet['cid'];
                    $kconoff = $mDishSet['kconoff'];
                }
                $tmpdish = $DishDb->where(array('id' => $did, 'cid' => $dishofcid))->find();
                if ($kconoff && !empty($tmpdish) && ($tmpdish['instock'] > 0)) {
                    $DishDb->where(array('id' => $did, 'cid' => $dishofcid))->setDec('instock', $vv['num']);
                }
                $logarr = array(
                    'did' => $did, 'nums' => $vv['num'],
                    'unitprice' => $vv['price'], 'money' => $vv['num'] * $vv['price'], 'dname' => $vv['name'],
                    'addtime' => $data['time'], 'addtimestr' => date('Y-m-d H:i:s', $data['time']), 'comefrom' => 0
                );
                $savelogarr = array_merge($tmparr, $logarr);
                $log_db->add($savelogarr);
            }
        }
    }

    /** 获取主餐厅配置信息* */
    private function getDishMainCompany($token) {
        $MainC = M('Company')->where(array('token' => $token, 'isbranch' => 0))->find();
        $m_cid = $MainC['id'];

        unset($MainC);
        $mDishC = M('Dish_company')->where(array('cid' => $m_cid))->find();
        unset($m_cid);
        return $mDishC;
    }

    /**
     * 订单详情
     */
    public function orderInfo() {
        $id = $this->_get('id') ? intval($this->_get('id', 'trim')) : 0;
        $fd = $this->_get('fd') ? $this->_get('fd', 'trim') : '';
        $cidd = $this->_get('cidd') ? intval($this->_get('cidd', 'trim')) : 0;
        $cid = $this->_cid;
        if (($fd == 'on') && ($cidd > 0)) {
            $cid = $cidd;
            $this->assign('isfd', true);
        }
        $dishOrder = M('Dish_order');
        if ($thisOrder = $dishOrder->where(array('id' => $id, 'cid' => $cid, 'token' => $this->token, 'comefrom' => 'dishout'))->find()) {
            if (IS_POST) {
                $isyes = isset($_POST['isyes']) ? intval($_POST['isyes']) : 0;
                $deliverymanid = $_POST['deliverymanid'];
                $paid = isset($_POST['paid']) ? intval($_POST['paid']) : 0;
                $isuse = isset($_POST['isuse']) ? intval($_POST['isuse']) : 0; /*                 * 是否发货* */
                $dishOrder->where(array('id' => $thisOrder['id']))->save(array('paid' => $paid, 'isuse' => $isuse,'isyes'=>$isyes,'deliverymanid'=>$deliverymanid));
                $company = M('Company')->where(array('token' => $this->token, 'id' => $thisOrder['cid']))->find();

                if ($paid) {
                    $temp = unserialize($thisOrder['info']);
                    $this->saleLog(array('cid' => $cid, 'oid' => $thisOrder['id'], 'paytype' => $thisOrder['paytype'], 'dish' => $temp, 'time' => $thisOrder['time']));
                    /*$op = new orderPrint();
                    $msg = array('companyname' => $company['name'], 'des' => htmlspecialchars_decode($thisOrder['des'], ENT_QUOTES),
                        'companytel' => $company['tel'], 'truename' => htmlspecialchars_decode($thisOrder['name'], ENT_QUOTES),
                        'tel' => $thisOrder['tel'], 'address' => htmlspecialchars_decode($thisOrder['address'], ENT_QUOTES),
                        'buytime' => $thisOrder['time'], 'orderid' => $thisOrder['orderid'],
                        'sendtime' => $thisOrder['reservetime'] > 0 ? $thisOrder['reservetime'] : '尽快送达', 'price' => $thisOrder['price'],
                        'total' => $thisOrder['total'], 'typename' => '外卖',
                        'ptype' => $thisOrder['paytype'], 'list' => $temp);
                    $msg = ArrayToStr::array_to_str($msg, 1);
                    $op->printit($this->token, $this->_cid, 'DishOut', $msg, 1);*/
                }
                if ($isuse) {  //此处就注释掉了 工单编号: 17478 的修改 减少打印次数 省纸
                    /*Sms::sendSms($this->token, "{$company['name']}欢迎您，您的外卖订单号为：{$thisOrder['orderid']}的订单已经从本店出发送货了！", $thisOrder['tel']);*/
                    $model = new templateNews();
                    $model->sendTempMsg('OPENTM202521011', array('href' => $this->siteUrl . U('Wap/DishOut/myOrder', array('token' => $this->token, 'wecha_id' => $thisOrder['wecha_id'], 'cid' => $thisOrder['cid'])), 'wecha_id' => $thisOrder['wecha_id'], 'first' => '外卖送菜提醒', 'keyword1' => $thisOrder['orderid'], 'keyword2' => date("Y年m月d日H时i分s秒"), 'remark' => '您订的外卖已送出，请注意接收！'));
                }
                $this->success('修改成功', U('DishOut/orderInfo', array('token' => session('token'), 'id' => $thisOrder['id'])));
            } else {
                $payarr = array('alipay' => '支付宝', 'weixin' => '微信支付', 'tenpay' => '财付通[wap手机]', 'tenpaycomputer' => '财付通[即时到帐]', 'yeepay' => '易宝支付', 'allinpay' => '通联支付', 'daofu' => '货到付款', 'dianfu' => '到店付款', 'chinabank' => '网银在线');
                $paystr = strtolower($thisOrder['paytype']);
                $thisOrder['paystr'] = !empty($paystr) && array_key_exists($paystr, $payarr) ? $payarr[$paystr] : '其他';
                $dishList = unserialize($thisOrder['info']);
                $coupon = D('Coupon_pay_record')->where(array('orderid' => $thisOrder['orderid'], 'token' => $this->token, 'wechat_id' => $thisOrder['wecha_id'], 'from' => 'DishOut', 'dateline' => array('gt', 0)))->find();
                $thisOrder['reduce_cost'] = 0;
                if ($coupon) {
                    $thisOrder['reduce_cost'] = $coupon['reduce_cost'];
                }
                $this->assign('thisOrder', $thisOrder);
                $this->assign('dishList', $dishList);
                $deliveryman_list = M('dishout_deliveryman')->where(array('token'=>$this->token,'cid'=>$this->_cid))->select();
                $this->assign('deliveryman_list', $deliveryman_list);
                $this->display();
            }
        }
    }

    /**
     * 打印订单
     */
    public function toPrint() {
        $id = $this->_post('oid') ? intval($this->_post('oid', 'trim')) : 0;
        $dishOrder = M('Dish_order');
        if ($thisOrder = $dishOrder->where(array('id' => $id, 'cid' => $this->_cid, 'token' => $this->token, 'comefrom' => 'dishout'))->find()) {
            $company = M('Company')->where(array('token' => $this->token, 'id' => $thisOrder['cid']))->find();
            $temp = unserialize($thisOrder['info']);
            $op = new orderPrint();

            $msg = array('companyname' => $company['name'], 'des' => htmlspecialchars_decode($thisOrder['des'], ENT_QUOTES),
                'companytel' => $company['tel'], 'truename' => htmlspecialchars_decode($thisOrder['name'], ENT_QUOTES),
                'tel' => $thisOrder['tel'], 'address' => htmlspecialchars_decode($thisOrder['address'], ENT_QUOTES),
                'buytime' => $thisOrder['time'], 'orderid' => $thisOrder['orderid'],
                'sendtime' => $thisOrder['reservetime'], 'price' => $thisOrder['price'],
                'total' => $thisOrder['total'], 'typename' => '外卖',
                'list' => $temp);
            $msg = ArrayToStr::array_to_str($msg, $thisOrder['paid']);
            $op->printit($this->token, $this->_cid, 'DishOut', $msg, 1);
            echo json_encode(array('error' => 0));
        }
    }

    /**
     * 删除订单
     */
    public function deleteOrder() {
        $id = isset($_REQUEST['id']) ? intval($_REQUEST['id']) : 0;
        $dishOrder = M('Dish_order');
        if ($thisOrder = $dishOrder->where(array('id' => $id, 'cid' => $this->_cid, 'token' => $this->token, 'comefrom' => 'dishout'))->find()) {
            /* $dishOrder->where(array('id' => $id))->delete();*换成软删除* */
            $dishOrder->where(array('id' => $id))->save(array('isdel' => 1));
            $this->success('操作成功', U('DishOut/orders', array('token' => session('token'), 'cid' => $this->_cid)));
        }
    }

    /**
     * 菜品统计
     */
    public function Statistics() {
        $starttime = $this->_get('stime', 'trim');
        $starttime = !empty($starttime) ? strtotime($starttime) : 0;
        $endtime = $this->_get('etime', 'trim');
        $endtime = !empty($endtime) ? strtotime($endtime) : 0;
        $starttime = $starttime > 0 ? $starttime : strtotime(date('Y-m-d') . '00:00:00'); /*         * 默认统计今天的* */
        $endtime = $endtime > 0 ? $endtime : strtotime(date('Y-m-d H:i:s')); /*         * 默认统计今天的* */
        //$salelog = M('Dishout_salelog');
        $Model = new Model();
        $sqlstr = "select *,sum(money) as tmoney,sum(nums) as tnums from " . C('DB_PREFIX') . "dishout_salelog where comefrom='0' AND cid=" . $this->_cid . " AND token='" . $this->token . "' AND addtime>=" . $starttime . " AND addtime<=" . $endtime . " group by did";
        $tmp = $Model->query($sqlstr);
        $caiarr = array();
        $numsarr = array();
        $moneyarr = array();
        $tnums = 0;
        $tmoney = 0;
        if (!empty($tmp)) {
            foreach ($tmp as $kk => $vv) {
                $caiarr[] = "'" . $vv['dname'] . "'";
                $numsarr[] = $vv['tnums'];
                $tnums+=$vv['tnums'];
                $moneyarr[] = $vv['tmoney'];
                $tmoney+=$vv['tmoney'];
            }
        } else {
            $this->assign('nodata', true);
        }
        if (!empty($caiarr)) {
            $caistr = implode(',', $caiarr);
        } else {
            $caistr = "";
        }
        if (!empty($numsarr)) {
            $numsstr = implode(',', $numsarr);
        } else {
            $numsstr = '';
        }
        if (!empty($moneyarr)) {
            $moneystr = implode(',', $moneyarr);
        } else {
            $moneystr = '';
        }
        $this->assign('stime', date('Y-m-d H:i:s', $starttime));
        $this->assign('etime', date('Y-m-d H:i:s', $endtime));
        $this->assign('caistr', $caistr);
        $this->assign('numsstr', $numsstr);
        $this->assign('moneystr', $moneystr);
        $this->assign('tnums', $tnums);
        $this->assign('tmoney', $tmoney);
        $this->display();
    }
    
    public function deliveryman(){
        $where['token'] = $this->token;
        $where['cid'] = $this->_cid;
        $count = M('dishout_deliveryman')->where($where)->count();
        $Page = new Page($count, 20);
        $show = $Page->show();
        $list = M('dishout_deliveryman')->where($where)->limit($Page->firstRow . ',' . $Page->listRows)->select();
        $this->assign('page', $show);
        $this->assign('list', $list);
        $this->display();
    }
    public function deliveryman_set(){
        $id = $_GET['id'];
        $tableData = M('dishout_deliveryman')->where(array('token'=>$this->token,'id'=>$id))->find();
        if(IS_POST){
            if($tableData){
                M('dishout_deliveryman')->where(array('token'=>$this->token,'cid'=>$this->_cid,'id'=>$id))->save(array('name'=>$_POST['name'],'tel'=>$_POST['tel']));
            }else{
                M('dishout_deliveryman')->add(array('token'=>$this->token,'cid'=>$this->_cid,'name'=>$_POST['name'],'tel'=>$_POST['tel'],'addtime'=>time()));
            }
            $this->success('设置成功',U('DishOut/deliveryman',array('token'=>$this->token,'cid'=>$this->_cid)));
        }else{
            $this->assign('tableData',$tableData);
            $this->display();
        }
    }
    public function deliveryman_del(){
        $id = $_GET['id'];
        M('dishout_deliveryman')->where(array('token'=>$this->token,'id'=>$id))->delete();
        $this->success('删除成功');
    }
}

?>