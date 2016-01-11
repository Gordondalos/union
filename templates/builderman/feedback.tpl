<div class="s-block">
	<div class="title-block">
		Обратная связь
	</div>
	<div class="s-block-content">
		<table class="user-info-table">
		[not-logged]
			<tr>
				<td width="120">Ваше имя:</td>
				<td><input type="text" maxlength="35" name="name" class="f_input" /></td>
			</tr>
			<tr>
				<td>E-Mail:</td>
				<td><input type="text" maxlength="35" name="email" class="f_input" /></td>
			</tr>
		[/not-logged]
			<tr>
				<td>Заголовок:</td>
				<td><input type="text" maxlength="45" name="subject" class="f_input" /></td>
			</tr>
			<tr>
				<td>Получатель:</td>
				<td>{recipient}</td>
			</tr>
			<tr>
				<td>Сообщение:</td>
				<td><textarea name="message" style="width:320px; height:160px" class="f_textarea" /></textarea></td>
			</tr>
			[sec_code]
			<tr>
				<td>Код безопасности:</td>
				<td><br />{code}</td>
			</tr>
			<tr>
				<td>Введите код:</td>
				<td><input type="text" maxlength="45" name="sec_code" style="width:115px" class="f_input" /></td>
			</tr>
			[/sec_code]
			[recaptcha]
		<tr>	
		<td colspan="2">
			Введите два слова, показанных на изображении: <span class="impot">*</span>
			<div>{recaptcha}</div>
		</td>
	</tr>
		[/recaptcha]
			[question]
			<tr>
				<td class="label">
					Вопрос:
				</td>
				<td>
					<div>{question}</div>
				</td>
			</tr>
			<tr>
				<td class="label">
					Ответ:<span class="impot">*</span>
				</td>
				<td>
					<div><input type="text" name="question_answer" id="question_answer" class="f_input" /></div>
				</td>
			</tr>
			[/question]
			<tr>
				<td>&nbsp;</td>
				<td><input name="send_btn" type="image" src="{THEME}/images/ok.jpg" style="border: 0;" value="Отправить!" /></td>
			</tr>
		</table>
	</div>
</div>