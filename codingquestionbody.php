<?php
session_start();
require_once('mysql.php');

$qid=$_POST['qid'];
if($qid==$_SESSION['count']+1)
$qid=1;

$query=mysql_query("select * from codingquestions where quesid='1'");

if($query)
{
 $res=mysql_fetch_array($query);
 $question=$res['question'];
$sampleinput=$res['sampleinput'];
$sampleoutput=$res['sampleoutput'];

 $query1=mysql_query("select * from `hireon`.`studentresponse` where `quesid`='$qid'");
echo mysql_error();
 $res1=mysql_fetch_array($query1);
 
 echo "<div class='panel panel-default question'><div class='panel-heading'>";
 echo "<h3>Q$qid. $question</h3>";
 echo "<div class='well'><h4><strong>Sample Input</h4></strong>";
 echo "<br><pre>$sampleinput</pre>";
 echo "</div>";
 echo "<div class='well'><h4><strong>Sample Output</strong></h4>";
 echo "<br><pre>$sampleoutput</pre>";
 echo "</div><div class='well'><h4><strong>Write Your Code Here</strong></h4>";
 echo "<div><textarea id='c-code'>";
 echo "</textarea></div>";
 echo "<div class='btngroup'>";
 echo "<a href='#' class='btn btn-primary btn-lg runcode' style='margin-right:4px;'>Run Code</a>";
 echo "<a href='#' class='btn btn-success btn-lg submit'>Submit</a>";
 echo "</div><div class='result'></div></div></div>";
}
else
echo mysql_error();

?>

<style>.CodeMirror {border: 4px  solid #dee;
        width:100%;
      }
      .result{
      	margin-top: 7px;
      }
</style>

<script>
      var cEditor = CodeMirror.fromTextArea(document.getElementById("c-code"), {
        lineNumbers: true,
        matchBrackets: true,
        mode: "text/x-csrc",

      });
      cEditor.setValue("/*Write your program here*/\n#include<stdio.h> \nint main()\n{\n\n\nreturn 0;\n}");
        //alert(cEditor.getValue());
      $("document").ready(function(){

      	$(".runcode").click(function(){
      	   var value=cEditor.getValue();

      	   $.post("compiler/compile.php",{code:value},function(data){
      	   	  $(".result").html(data);
      	   });

			  $("html, body").animate({ scrollTop: $(document).height() }, 1000);
      	});
      });
    </script>



