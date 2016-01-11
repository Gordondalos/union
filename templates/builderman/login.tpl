[not-group=5]
<div class="left-block2">
	<div class="left-block-content">
		<div class="welcome">
			Добро пожаловать, {login} (<a href="{logout-link}" class="lu-link">выйти</a>)
		</div>
		<div class="l-link">
<!--			[admin-link]<a href="{admin-link}" class="admin-link" target="_blank">Админцентр</a>[/admin-link]-->
<!--			<a href="{addnews-link}" class="add-link">Опубликовать</a>-->
			<a href="{profile-link}" class="profile-link"><img src="{THEME}/images/icon1.png" alt="icon" /> Профиль</a>
			<a href="{pm-link}" class="pm-link"><img src="{THEME}/images/icon2.png" alt="icon" /> Почта ({new-pm} | {all-pm})</a>	
			<a href="{favorites-link}"><img src="{THEME}/images/icon3.png" alt="icon" /> Избранное ({favorite-count})</a>
			<div style="clear: both;"></div>
		</div>
	</div>
	<div class="left-block-bottom"></div>
</div>
[/not-group]
[group=5]
<div class="left-block">
	<div class="left-block-content">
		<form method="post" action="" style="margin: 0; padding: 0;position: relative;">
			<div class="login-line">
			Логин:
				<input name="login_name" type="text" class="login-input-text" title="Ваше имя на сайте" />
			</div>
			<div class="login-line">
			Пароль:
				<input name="login_password" type="password" class="login-input-text" title="Ваш пароль" />
			</div>
			<div style="clear: both;"></div>
			<input onclick="submit();" type="submit" class="enter" value="Войти" /><input name="login" type="hidden" id="login" value="submit" />
			<div class="reg-link">
				<a href="{registration-link}" title="регистрация на сайте">Регистрация</a>
				<a href="{lostpassword-link}" title="регистрация на сайте">Забыл пароль?</a>
			</div>
		</form>
	</div>
	<div class="left-block-bottom"></div>
</div>
[/group]