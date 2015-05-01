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
		slideshowSpeed: 100,
		controlNav: false,
		directionNav: false,
		touch: false,
		keyboard: false,
		animationLoop: false,
		animationSpeed: 0,
		initDelay: 2000
	});
}