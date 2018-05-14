/**
 * 
 */
jQuery('#generateUrl').click(function(){
	$.ajax({
		type : 'post', 
		url : '../../GenerateUrlServlet',
		data : {
			uId : '1',
			caseId:'2'
		},
		datatype : 'text',
		success : function(responseText) {
			console.log(responseText);
			var urlJson = JSON.parse(responseText);
			console.log(urlJson.url);
			jQuery('#messageId').html(urlJson.url);
			jQuery('#tokenId').val(urlJson.token);
			jQuery('#sendEmailId').submit();
		}
	});
});