$(document).ready(function() {
	$('.header__nav-list-hamburger').click(function(e) {
		e.stopPropagation();
		$('.header__nav-list').toggleClass('active');
	});

	$(document).click(function() {
		$('.header__nav-list').removeClass('active');
	});
});
