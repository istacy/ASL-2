$(document).ready(function(e) {
	startSlide();
	$("#replay-slide").on("click",function(){
		var slideshow = $(".flexslider").clone();
		$(".flexslider").remove();
		$("#movie").append(slideshow);
		startSlide();
	});  
});
function startSlide(){
	$(".flexslider").flexslider({
		slideshowSpeed: 500,
		controlNav: false,
		directionNav: false,
		touch: false,
		keyboard: false,
		animationLoop: false,
		animationSpeed: 100,
		initDelay: 2000
	});
}