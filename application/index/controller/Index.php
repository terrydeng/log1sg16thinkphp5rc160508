<?php
namespace app\index\controller;	//20160508日志控制，现实系统，搭配 mysql的*.sql 数据库

use think\Controller;
use think\Db;
class Index extends Controller //class Index
{
    public function index()
    {
		echo "日志控制系统：";
		echo "<br />";
		
		$dat2a     = Db::table('a1tl_jj1_0log1')->select();
        $this->assign('resul2t',$dat2a);
		
		print_r($dat2a);
		echo "<br />";
		
		foreach(  $dat2a as $da) {
			echo '<a href="/index.php/Index/index/creat1updat1/dat1tim1/';
			echo $da['dat1time'];
			echo '">';
			echo $da['timestamp'];
			

			echo '</a>';
			
				foreach($da as $d1) {
					echo "&nbsp;|&nbsp;";
					echo $d1;
				}
			
			echo "&nbsp;=||";
			echo "<br />";
		}//foreach(  $dat2a as $da
		echo "<br />";
		
//        return '<style type="text/css">*{ padding: 0; margin: 0; } div{ padding: 4px 48px;} a{color:#2E5CD5;cursor: pointer;text-decoration: none} a:hover{text-decoration:underline; } body{ background: #fff; font-family: "Century Gothic","Microsoft yahei"; color: #333;font-size:18px} h1{ font-size: 100px; font-weight: normal; margin-bottom: 12px; } p{ line-height: 1.6em; font-size: 42px }</style><div style="padding: 24px 48px;"> <h1>:)</h1><p> ThinkPHP V5<br/><span style="font-size:30px">十年磨一剑 - 为API开发设计的高性能框架</span></p><span style="font-size:22px;">[ V5.0 版本由 <a href="http://www.qiniu.com" target="qiniu">七牛云</a> 独家赞助发布 ]</span></div><script type="text/javascript" src="http://tajs.qq.com/stats?sId=9347272" charset="UTF-8"></script><script type="text/javascript" src="http://ad.topthink.com/Public/static/client.js"></script><thinkad id="ad_bd568ce7058a1091"></thinkad>';

    }//public function index(
	
// creat1updat1:
	public function creat1updat1()
	{
		$list = Db::table('a1tl_jj1_0log1')
//			->where('atlaststate','=',1)
			->where('dat1time','<=', $_GET['dat1tim1'] )
//			->where($_GET['dat1tim1'],'>=','dat1time' )
//			->order('timestamp asc')
			->select();
			
	//清空表 :
		Db::execute('TRUNCATE table a1tl_jj1user1yeji02');
		
//		print_r($dat3a);
		echo "<br />";
		
		// 删除数据
		Db::table('a1tl_jj1user1yeji02')
			->where('yId2', '>',0)
			->delete();		

		
		foreach($list as $lda ) {
				Db::table('a1tl_jj1user1yeji02')
				->insert([
						
				//下面填写 日志重建（重现内容）20160508
						'userid'=> $lda['userid'],
						'yeji'=>$lda['yeji'],
						'jiangj'=>$lda['jiangj'],
						
					//日志重建（重现内容）写完毕20160508
						//
						'timestamp'=>$lda['timestamp'],
						'dat1time'=>$lda['dat1time'],
						'rcud'=>$lda['rcud'],
						'atlaststate'=>$lda['atlaststate'],
						'yid2'=>$lda['yid01']
						
				]) ;
		}
		
		//------------
				echo "日志重建->显示：";
		echo "<br />";
		
		$dat3a     = Db::table('a1tl_jj1user1yeji02')->select();
        $this->assign('resul3t',$dat3a);

	
		foreach(  $dat3a as $da3) {
			echo '<a href="index.php/Index/index/creat1updat1/dat1tim1/';
			echo '<a href="index.php/Index/index/';
			echo $da3['dat1time'];
			echo '">';
			echo '返回:'.$da3['timestamp'];
			

			echo '</a>';
			
				foreach($da3 as $d31) {
					echo "&nbsp;|&nbsp;";
					echo $d31;
				}
			
			echo "&nbsp;=||";
			echo "<br />";
		}//foreach(  $dat2a as $da
		echo "<br />";
		
		
		//============
	}//public function creat1updat1(
	
}//class Index extends Controller
