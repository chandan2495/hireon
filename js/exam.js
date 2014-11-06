$(document).ready(function(){
 $(".qq").click(function(event){
 	var id=event.target.id;
 $.post("questionbody.php",{qid:event.target.id},function(data){
 	$('#questionbody').html(data);
 	//alert(data);
 });


 });

 $(".cqq").click(function(event){
 	var id=event.target.id;
 $.post("codingquestionbody.php",{qid:event.target.id},function(data){
 	$('#questionbody').html(data);
 	
 	//alert(data);
 });


 });

 $("body").on('click','.sub',function(event){
 	var q=$("#rad").attr("name");
 	if ($("input[name='answer']").is(':checked')) {  
 	var a=$("input[name='answer']:checked").val();
 	var q1=parseInt(q)+1;
 	$.post("submitanswer.php",{qid:q,answer:a},function(data){
 	});
 	var id="#"+q;
 	$(id).css("background-color","#0F385D");
 	$.post("questionbody.php",{qid:q1},function(data){
 				$('#questionbody').html(data);
 	});
 }
 else
 {
 	alert("Select a response first");
 }
 });
});