<div class="container1" style="padding:0px; margin:0px">
	<div class="row" style="padding:0px; margin:0px">
		<div class="col-sm-1 queside" style="padding:0px; margin:0px">
			<ul>
			<?php
			require_once('./mysql.php');

			$query=mysql_query("select count(*) as noofques from questions");
			if($query){
				$res=mysql_fetch_array($query);
				$count=$res['noofques'];
				$qno=1;
				$_SESSION['count']=$count;
			while($count!=0){
			echo "<li><a class='btn btn-primary btn-ms qq' href='#' id='$qno'>Q$qno</a></li>";			
			$count=$count-1;
			$qno=$qno+1;
		}
			}

			$query=mysql_query("select count(*) as noofques from codingquestions");
			if($query){
				$res=mysql_fetch_array($query);
				$count=$res['noofques'];
				$_SESSION['count']+=$count;
			while($count!=0){
			echo "<li><a class='btn btn-primary btn-ms cqq' href='#' id='$qno'>Q$qno</a></li>";			
			$count=$count-1;
			$qno=$qno+1;
		}
			}
			?>
			</ul> 
		</div>
		<div class="col-sm-10" id="questionbody">
			<?php
require_once('mysql.php');

$query=mysql_query("select * from questions where quesid='1'");

if($query)
{
 $res=mysql_fetch_array($query);
 $question=$res['question'];
 $optiona=$res['optiona'];
 $optionb=$res['optionb'];
 $optionc=$res['optionc'];
 $optiond=$res['optiond'];

  $query1=mysql_query("select * from `hireon`.`studentresponse` where `quesid`='1'");
echo mysql_error();
 $res1=mysql_fetch_array($query1);
 
 echo "<div class='panel panel-default question'><div class='panel-heading'>";
 echo "<h3>Q1. $question</h3></div>";
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
 echo "<button type='button' class='btn btn-primary sub' name='1' id='rad'>Submit</button>";
 echo "</form></div></div>";
}
else
echo mysql_error();

?>
		</div>
		
	</div>
</div>