<?php
session_start();
require_once('mysql.php');

$qid=$_POST['qid'];
if($qid==$_SESSION['count']+1)
$qid=1;

$query=mysql_query("select * from questions where quesid='$qid'");

if($query)
{
 $res=mysql_fetch_array($query);
 $question=$res['question'];
 $optiona=$res['optiona'];
 $optionb=$res['optionb'];
 $optionc=$res['optionc'];
 $optiond=$res['optiond'];

 $query1=mysql_query("select * from `hireon`.`studentresponse` where `quesid`='$qid'");
echo mysql_error();
 $res1=mysql_fetch_array($query1);
 
 echo "<div class='panel panel-default question'><div class='panel-heading'>";
 echo "<h3>Q$qid. $question</h3></div>";
 echo "<div class='panel-body'>";
 echo "<div class='options'>";
 echo "<form class='form-horizontal'>";
 echo "<input type='radio' name='answer' value='1'";
 if($res1['answered']=='1'&&$res1['studentanswer']=='1')
 echo " checked='checked'/>";
else
echo "/>";
 echo "<strong>&nbsp;&nbsp;&nbsp;$optiona</br></br>";
 echo "<input type='radio' name='answer' value='2'";
  if($res1['answered']=='1'&&$res1['studentanswer']=='2')
 echo " checked='checked'/>";
else
echo "/>";
 echo "<strong>&nbsp;&nbsp;&nbsp;$optiona</br></br>";
 echo "<input type='radio' name='answer'  value='3'";
  if($res1['answered']=='1'&&$res1['studentanswer']=='3')
 echo " checked='checked'/>";
else
echo "/>";
 echo "<strong>&nbsp;&nbsp;&nbsp;$optiona</br></br>";
 echo "<input type='radio' name='answer'  value='4'";
  if($res1['answered']=='1'&&$res1['studentanswer']=='4')
 echo " checked='checked'/>";
else
echo "/>";
 echo "<strong>&nbsp;&nbsp;&nbsp;$optiona</br></br>";
 echo "<button type='button' class='btn btn-primary sub' name='$qid' id='rad'>Submit</button>";
 echo "</form></div></div>";
}
else
echo mysql_error();

?>
