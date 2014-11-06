<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Online Assessment Tool</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/business-frontpage.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <script src="lib/codemirror.js"></script>
    <link rel="stylesheet" href="lib/codemirror.css">
    <link rel="stylesheet" href="theme/vibrant-ink.css">
    <script src="lib/codemirror.js"></script>
    <script src="mode/clike/clike.js"></script>

    <style>.CodeMirror {border: 2px  inset #dee;
        width:70%;
      }
      </style>
    <script src="mode/clike/clike.js"></script>
    <script src="js/jquery-2.1.0.js"></script>
    <script src="js/exam.js"></script>

</head>

<body>

    <?php
    include('header1.php');
    include('logintemplate.php');
    include('exambody.php');
    ?>

        <hr>

    <!-- jQuery Version 1.11.0 -->
    <script src="js/jquery-1.11.0.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    <script>
      var cEditor = CodeMirror.fromTextArea(document.getElementById("c-code"), {
        lineNumbers: true,
        matchBrackets: true,
        mode: "text/x-csrc",

      });
      cEditor.setValue("/*Write your program here*/\n#include<stdio.h> \nint main()\n{\n\n\nreturn 0;\n}");
      function get(){
        alert(cEditor.getValue());
      }
      
    </script>


</body>

</html>
