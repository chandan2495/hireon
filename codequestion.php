<html>

<script src="lib/codemirror.js"></script>
    <link rel="stylesheet" href="lib/codemirror.css">
    <link rel="stylesheet" href="../../lib/codemirror.css">
<link rel="stylesheet" href="../../theme/vibrant-ink.css">
<script src="../../lib/codemirror.js"></script>
<script src="clike.js"></script>

<style>.CodeMirror {border: 2px  inset #dee;
    width:70%;
  }
  </style>
    <script src="mode/clike/clike.js"></script>
<script>
  var editor = CodeMirror.fromTextArea(myTextarea, {
    mode: "text/html"
  });
</script>

<form>
	<textarea name='myTextarea'></textarea>
</form>
</html>