$(document).ready(function() {
	
	/*
		Aleksey Skubaev

		askubaev@gmail.com
		icq - 322253350
		Разработка шаблонов для DLE и кроссбраузерная верстка
		------------------
		Необходимые jQuery скрипты.
	
	*/
	
	$('.login').click(function () {
		$('.login-block-hidden').fadeIn('400');
		$('.login-block-hidden-dark').fadeIn('400');
	});
	
	
	$('.login-block-hidden-dark, .close').click(function () {
		$('.login-block-hidden').fadeOut('400');
		$('.login-block-hidden-dark').fadeOut('400');
	});
	
	$('.top-menu-block li').hover(
	function() {
		$(this).find('.hidden-menu-block').css({'display':'block'});
		$(this).find('.menu-link').addClass('activ');
	}, function() {
		$(this).find('.hidden-menu-block').css({'display':'none'});
		$(this).find('.menu-link').removeClass('activ');
	});
	
	$('#foo1').carouFredSel({
		prev: '#prev1',
		next: '#next1',
		scroll: 1,
		auto: false
	});
	
});
