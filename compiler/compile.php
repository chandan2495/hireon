<?php

$code=$_POST['code'];

file_put_contents("prg1.c", $code);
$ret_value=3;
system("a.exe prg1.c",$ret_value);
//echo $ret_value;

if($ret_value==0)
echo "<div class='alert alert-success' role='alert'>All test cases Passed</div>";
else if($ret_value==1)
echo "<div class='alert alert-warning' role='alert'>Wrong Answer</div>";
else
echo "<div class='alert alert-warning' role='alert'>Compile Error</div>";

?>