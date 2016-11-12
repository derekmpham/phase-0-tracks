// Replace "Election Day 2016" with image when clicked on
$('h1').click(function() {
	$(this).html('<img src="https://aclufl.org/wp-content/uploads/2014/10/equ14-banner-grtv-912x140-v01.png" />');
});

// Have site description fade in and then gradually fade out
$('p').hide().fadeIn(3000).fadeOut(5000);

// Increase size of "News Links" when hovered over
$('h2').hover(function() {
	$(this).css('font-size', '200%');
});