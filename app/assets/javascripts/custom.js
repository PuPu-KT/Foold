//placeholder
$(document).ready(function() {

	$('.star-rating').raty({
		path: '/assets',
		readOnly: true,
		score: function () {
			return $(this).attr('data-score');
		}
	})

});
// //Homepage Carousel
// $(document).ready(function(){
// 	$('#realto-carousel').carousel({
// 		interval: 5000
// 	});
// });
