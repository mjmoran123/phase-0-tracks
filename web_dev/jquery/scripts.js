$(document).click(function(event){
	makeStylizedRectangle();
});

$('div').click(function(event){
	alert("YOU WIN!");
});

function randomIntFromInterval(min,max)
{
    return Math.floor(Math.random()*(max-min+1)+min);
}

function makeStylizedRectangle(){
	var colors = [];
	var r,g,b;

	var pos = [];
	var dims = [];

	for (var i = 0; i < 3; i++) {
		colors[i] = randomIntFromInterval(0,255);
	}

	r = colors[0].toString();
	g = colors[1].toString();
	b = colors[2].toString();

	for (var j = 0; j < 2; j++) {
		pos[j] = randomIntFromInterval(0,500);
	}

	for (var k = 0; k < 2; k++) {
		dims[k] = randomIntFromInterval(0,200);
	}

	$('div').css({
		'background-color': 'rgb(' + r + ',' + g + ',' + b + ')',
		'top': pos[0].toString() + 'px',
		'left': pos[1].toString() + 'px',
		'height': dims[0].toString() + 'px',
		'width': dims[1].toString() + 'px'
	});
}



