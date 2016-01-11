<div class="s-block">
	<div class="s-block-title"><span>Общая статистика по сайту</span></div>
	<div class="s-block-content">
		<table class="statss" cellpadding="0" cellspacing="0">
			<tr>
				<td valign="top">
					Общее количество новостей:{news_num}<br />
					Из них опубликовано:{news_allow}<br />
					Из них на главной:{news_main}<br />
					На модерации:{news_moder}<br />
					Опубликовано за месяц:{news_month}<br />
					Опубликовано за неделю:{news_week}<br />
					Опубликовано за сутки:{news_day}<br />
				</td>
				<td valign="top">
					Всего комментариев:{comm_num} (<a href="index.php?do=lastcomments">последние</a>)<br />
					Добавлено за месяц:{comm_month}<br />
					Добавлено за неделю:{comm_week}<br />
					Добавлено за сутки:{comm_day}<br />
				</td>
				<td valign="top">
					Зарегистрировано пользователей:{user_num}<br />
					Из них забанено:{user_banned}<br />
					Зарегистрировано за месяц:{user_month}<br />
					Зарегистрировано за неделю:{user_week}<br />
					Зарегистрировано за сутки:{user_day}<br />
				</td>
			</tr>
			<tr>
				<td colspan="3">
					<span style="color: #39a5d9;">Общий размер базы данных: {datenbank}</span>
				</td>
			</tr>
		</table><br /><br />
		<div style="padding: 10px;">
		<div class="shot-title"><h1><i>Десятка лучших авторов на сайте:</i></h1></div>
		<table border="0" cellspacing="0" cellpadding="0" class="statss">{topusers}</table>
		</div>
	</div>
</div>