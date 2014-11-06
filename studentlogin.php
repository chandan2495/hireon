<?php
require_once('mysql.php');

$query=mysql_query("select * from `hireon`.`questions` where `testid`='1'");

if($query)
{
	while(($res=mysql_fetch_assoc($query))){
		$qid=$res['quesid'];
		echo $qid;
		$query1=mysql_query("INSERT INTO `hireon`.`studentresponse` (`responseid`,`studentid`, `testid`, `quesid`, `answered`, `studentanswer`) VALUES (NULL,'1', '1', '$qid', '0', NULL);");
	}
}
else
echo mysql_error();

?>