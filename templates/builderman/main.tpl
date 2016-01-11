<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	{headers}
	<link rel="stylesheet" href="{THEME}/css/style.css" type="text/css" />
	<!--[if lte IE 7]>
	<link rel="stylesheet" href="{THEME}/css/style-ie.css" type="text/css" />
	<![endif]-->
	<!--[if IE 8]>
	<link rel="stylesheet" href="{THEME}/css/style-ie8.css" type="text/css" />
	<![endif]-->
	<script type="text/javascript" src="{THEME}/js/shareTT.js"></script>
	<script type="text/javascript" src="{THEME}/js/active.js"></script>
	<script type="text/javascript" src="{THEME}/js/jquery.carouFredSel-5.6.4-packed.js"></script>
</head>
<body>
{AJAX}
<div class="body">
	<div class="main">
		<div class="header">
			<a href="/" class="logo"></a>
			<div class="search-block">
				<form method="post"  action='' style="margin: 0;padding: 0;">
					<input type="hidden" name="do" value="search"><input type="hidden" name="subaction" value="search" />
					<input name="story" type="text" class="form-text" id="story" value="поиск по сайту" onblur="if(this.value=='') this.value='поиск по сайту';" onfocus="if(this.value=='поиск по сайту') this.value='';" title="наберите Ваш запрос и нажмите enter" />
					<input type="image" src="{THEME}/images/search.png" value="Найти!" border="0" class="form-search" alt="Найти!">
				</form>
			</div>
			<div class="avtorization">
				[group=5]
					<div class="login">Войти</div>
					<a href="#" class="register-link">Регистрация</a>
				[/group]
				[not-group=5]
					{login}
				[/not-group]
			</div>
		</div>
		<div class="top-menu-block">
			<ul>                                                                                                                                                   
				<li>                                                             
					<a href="#" class="menu-link">Главная</a>
				</li>                                                                                                  
				<li>
					<a href="#" class="menu-link">Компании</a>
				</li>
				<li>
					<a href="#" class="menu-link">Новости</a>
				</li>
				<li>
					<a href="#" class="menu-link">Статьи</a>
				</li>
				<li>
					<a href="#" class="menu-link">Фотогалерея</a>
				</li>

				<li>
					<a href="#" class="menu-link">Контакты</a>
				</li>
			</ul>
			<div style="clear: both;"></div>
		</div>
		<div class="content">
			<div class="shadow-bottom"></div>
			<div class="shadow-left"></div>
			<div class="shadow-right"></div>
			<div class="left-col">
				<div class="item">
					<div class="item-title" style="background: none; padding: 0px;">Каталог товаров и работ</div>
					<div class="item-content">
						<div class="menu-left">
							<a href="#">Ямочный Ремонт</a>
							<a href="#">Прокладка ВОЛС</a>
							<a href="#">Асфальтные работы</a>
							<a href="#">Доставка Грузов</a>
							<a href="#">Прокладка коммуникаций</a>
							<a href="#">Фотоотчеты</a>
							<a href="#">Цех пластиковых Окон</a>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="item-title"><img src="{THEME}/images/title-icon1.png" alt="title-icon" /> Статьи о ремонте</div>
					<div class="item-content">
						{custom category="" template="article" aviable="global" from="0" limit="3" cache="no"}
					</div>
				</div>
				<div style="clear: both; height: 13px;"></div>
				<div class="item">
					<div class="item-title"><img src="{THEME}/images/title-icon2.png" alt="title-icon" /> опрос</div>
					<div class="item-content">
						{vote}
					</div>
				</div>
			</div>
			<div class="right-col">	
				[aviable=main]
				<div class="item">
					<div class="item-title" style="background: none; padding: 0px;">
						<img src="{THEME}/images/title-icon3.png" alt="title-icon" /> Популярные новости
						<a href="#" class="all">Новости</a>
					</div>
					<div class="item-content">
						<ul id="foo1">
							{topnews}
						</ul>
						<div class="clearfix"></div>
						<a id="prev1" class="prev1" href="#"></a>
						<a id="next1" class="next1" href="#"></a>
						<div style="clear: both;"></div>
					</div>
				</div>
				<div class="item">
					<div class="item-title"><img src="{THEME}/images/title-icon4.png" alt="title-icon" /> Наше Видео</div>
					<div class="item-content">
						{custom category="1" template="video" aviable="global" from="0" limit="6" cache="no"}
						<div style="clear: both;"></div>
					</div>
				</div>
				<div class="item">
					<div class="item-title"><img src="{THEME}/images/title-icon5.png" alt="title-icon" /> Полезные советы</div>
					<div class="item-content">
						<div class="sovet-block">
							{custom category="1" template="sovet" aviable="global" from="0" limit="3" cache="no"}
							<div class="man"></div>
						</div>
					</div>
				</div>
				[/aviable]
				[not-aviable=main]
					{speedbar}
					{info}
					{content}
					<div style="clear: both;"></div>
				[/not-aviable]
			</div>
			<div style="clear: both;"></div>
		</div>
		<div style="clear: both; height: 30px;"></div>
		<div class="footer">
			<a href="#" class="logo2"></a>
			<div class="footer-menu">                                                               
				<a href="#">Главная</a>
				<a href="#">Компании</a>
				<a href="#">Новости</a>
				<a href="#">Статьи</a>
				<a href="#">Фотогалерея</a>
				<a href="#">Контакты</a>
				<div style="clear: both;"></div>
			</div>
			<div class="copir">
				Разработка - <a href="/">Test</a>
			</div>
			<div style="clear: both;"></div>
		</div>
	</div>
	
</div>
<div class="login-block-hidden-dark"></div>
[group=5]
	<div class="login-block-hidden">
		<div class="close"></div>
		{login}
	</div>
[/group]
<!--[if IE 6]>
<a href="http://www.microsoft.com/rus/windows/internet-explorer/worldwide-sites.aspx" class="alert"></a>
<![endif]-->
</body>
</html>