$(document).ready(function(){
  $('[data-toggle="tooltip"]').tooltip();   
});

$('.tab-pane img').click(function() {

    var src = $(this).attr("src");
    var file_name = src.replace(/^.*[\\\/]/, '');
    $('.modal-body img').attr("src",src);

	$.post("data.php",
	{
	    // id: "1",
	    thumbnail_id: file_name
	},
    function(data, status){
    	// console.log(data);
	    var data = JSON.parse(data);
	    if(status == 'success') {
		    $('.modal-header h5').text(data.title);
		    $('.modal-body p').text(data.desc);
		}
	    
	    // alert("Data: " + data + "\nStatus: " + status);
	    console.log(data.title);
	    console.log(data.desc);
  });

});
