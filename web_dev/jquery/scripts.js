$(document).click(function(event){
	makeStylizedRectangle();
});

function randomIntFromInterval(min,max)
{
    return Math.floor(Math.random()*(max-min+1)+min);
}

function makeStylizedRectangle(){
	var colors = [];
	var r,g,b;

	for (var i = 0; i < 3; i++) {
		colors[i] = randomIntFromInterval(0,255);
	}

	r = colors[0].toString();
	g = colors[1].toString();
	b = colors[2].toString();

	$('div').css({
		'background-color': 'rgb(' + r + ',' + g + ',' + b + ')'
	});
}



