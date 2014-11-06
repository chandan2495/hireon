<?php
require_once('mysql.php');

$qid=$_POST['qid'];

$answer=$_POST['answer'];

$query=mysql_query("update `hireon`.`studentresponse` set `answered`='1', `studentanswer`='$answer' where `quesid`='$qid' and `studentid`='1'");

if($query)
{
	echo "Successfully";
}
else
echo mysql_error();

?>