$(function() {
	$('.slider-portadas').slick({
		autoplay:true,
		arrows:true,

		dots:false,
		centerMode:true,
		centerPadding:'10px',
		slidesToShow:3,
		responsive: [
		{
			breakpoint: 768,
			settings: {
				arrows: false,
				centerMode: true,
				centerPadding: '10px',
				slidesToShow:1
			}
		},
		{
			breakpoint: 480,
			settings: {
				arrows: false,
				centerMode: true,
				centerPadding: '10px',
				slidesToShow: 1
			}
		}]
	});
});
$(window).on("load", function(e) {
	$('header.oculto, section.oculto').removeClass('oculto');
	$('.jumbotron').delay(250).fadeOut('slow', function() {
		$(this).remove();
	});
});