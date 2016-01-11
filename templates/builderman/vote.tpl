[votelist]
<div class="vote-title">{title}</div>
<div style="text-align: center;"> 
<form method="post" name="vote" action=''>
<div class="vote-repeat">
	<div class="vote-top">
		<div class="vote-bottom">
			<div style="padding: 20px 10px 10px 10px; text-align: left;">
				{list}
			</div>
		</div>
	</div>
</div>
<div style="clear: both; height: 10px;"></div>
<input type="hidden" name="vote_action" value="vote" />
<input type="hidden" name="vote_id" id="vote_id" value="1" />
<input type="submit" onclick="doVote('vote'); return false;" value="Голосовать" class="vote-buttom" style="margin: 0 0 0 35px;" /> 
</form> 
<form method=post name="vote_result" action=''>
<input type="hidden" name="vote_action" value="results" />
<input type="hidden" name="vote_id" value="1" />
<input type="submit" onclick="doVote('results'); return false;" value="Результаты" class="vote-buttom" />
</form>
<br />
</div>
[/votelist]
[voteresult]
<div style="padding: 5px;">
<div class="vote-title">{title}</div>
<div>{list}</div>
<div>Всего проголосовало: {votes}</div>
</div>
[/voteresult]