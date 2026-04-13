//sidebar toggle
$("#menu-toggle").click(function(e) {
      e.preventDefault();
      $("#wrapper").toggleClass("toggled");
    });
//sidebar toggle End

// sidebar dropdown
$('.list-group li.has-children > a').click(function() {
	$(".list-group li.has-children > a").not(this).removeClass('activea');
	$(this).toggleClass('activea');
	$(this).parent().siblings().find('ul').slideUp(300);
	$(this).next('ul').stop(true, false, true).slideToggle(300);
	return false;
});

// sidebar dropdown End



  
//Data-Tables
  
$(document).ready(function() {

  json_data = [];
  $.getJSON('data.json', function(data) {
    json_data = data;
  })
  .done(function() {
    
    var labels = json_data.data.map(function(e) {
       return e.snake_title;
    });
    var data = json_data.data.map(function(e) {
       return e.snake_price;
    });

    //chart js
	if ($(window).width() < 767) {
		fontsz = 8;
	}
	else
	{
		fontsz = 14;
	}
    var ctx = document.getElementById("dynamic-chart");
          var myChart = new Chart(ctx, {
            type: 'bar',
			responsive:true,
            data: {
              labels: labels,
              datasets: [{
                data: data,
                lineTension: 0,
                backgroundColor: '#007bff',
                borderColor: '#007bff',
                borderWidth: 2,
                pointBackgroundColor: '#007bff'
              }]
            },
            options: {
              scales: {
                yAxes: [{
                  ticks: {
                    beginAtZero: true
                  },
                   scaleLabel: {
                      display: true,
                      labelString: 'Price'
                    }
                }],
				xAxes: [{
ticks: {
autoSkip: false,
fontSize: fontsz
}
}],		
              },
              legend: {
                display: false,
              }
            }
          });
      
    //chart End js
    
$('#table-dynamic').DataTable( {
        // "ajax": {
        //     "url": "data.json",
        //     "dataSrc": "data"
        // },
        data: json_data.data,
        "columns" : [
            { "data" : "id" },
            { "data" : "mm_id" },
            { "data" : "snake_title" },
            { "data" : "snake_price" },
            { "data" : "availability" },
            { "data" : "impressions" },
            { "data" : "clicks" },
            { "data" : "inquiries" }
        ]
    } );

//Data-End-Tables

  });


} );


  $( function() {
    var availableTags = [
      "ActionScript",
      "AppleScript",
      "Asp",
      "BASIC",
      "C",
      "C++",
      "Clojure",
      "COBOL",
      "ColdFusion",
      "Erlang",
      "Fortran",
      "Groovy",
      "Haskell",
      "Java",
      "JavaScript",
      "Lisp",
      "Perl",
      "PHP",
      "Python",
      "Ruby",
      "Scala",
      "Scheme"
    ];
    $( "#tags" ).autocomplete({
      source: availableTags
    });
  } );