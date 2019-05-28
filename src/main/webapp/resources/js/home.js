var percent = [];
var names = [];

$(document).ready(function() {
	$.ajax({
		type : "GET",
		url : "stupercent",
		success : function(data) {

			for (i = 0; i < data.length; i++) {
				percent[i] = parseInt(data[i]);
			}

		}
	});

	$.ajax({
		type : "GET",
		url : "stuname",
		success : function(datas) {

			for (i = 0; i < datas.length; i++) {
				names[i] = datas[i];
			}
			graph(percent, names);

		}
	});

})

function graph(percent, names) {

	Highcharts.chart('container', {
	    xAxis: {
	        categories:names
	    },
	    yAxis: {
	        min: 0
	    },
	    title: {
	        text: 'Student Percentage graph.'
	    },
	    series: [{
	        type: 'line',
	        name: 'Regression Line',
	        data: percent,
	        marker: {
	            enabled: false
	        },
	        states: {
	            hover: {
	                lineWidth: 0
	            }
	        },
	        enableMouseTracking: false
	    }, {
	        type: 'line',
	        name: 'percentage',
	        data: percent,
	        marker: {
	            radius: 4
	        }
	    }]
	});
}

