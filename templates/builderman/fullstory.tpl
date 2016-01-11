<script type="text/javascript">
	$(function(){
		
		$('.hidden-comment h3').click(function(){
			$(this).next('div').slideToggle();
		});
		
	});
</script>
<div class="full-news">
	<h1>{title}</h1>
	
	<div class="full-news-content">
		{full-story}
		<div style="clear: both;"></div>
	</div>
	<div style="clear: both; height: 20px;"></div>
	<div class="full-news-info">
		[edit]<img src="{THEME}/images/edit.png" width="16" alt="" border="0" style="float: left; margin: 0 10px 0 0;" />[/edit]
		<div class="full-fav">{favorites}</div>
		<div class="full-cat">Категория: {link-category}</div>
		<div class="full-date">{date=d.m.y}</div>
		<div class="full-author">{author}</div>
		<div class="ttfav" style="float: right; padding: 0px;"></div>
		<div style="clear: both;"></div>
	</div>
	
	<div style="clear: both;height: 20px;"></div>
	
	
	
	<div style="clear: both;height: 10px;"></div>
	[related-news]
	<div class="item">
		<div class="item-title"><img src="{THEME}/images/title-icon6.png" alt="title-icon" /> Подобные новости</div>
		<div style="clear: both;"></div>
		{related-news}
		<div style="clear: both;"></div>
	</div>
	[/related-news]
	<div style="clear: both; height: 20px;"></div>
	
	<div class="item" style="position: relative;">
		<div class="item-title" style="font: 22px Verdana; text-transform: none; margin: 0;">Комментарии</div>
		<div class="full-comment-content">
			<div class="hidden-comment">
				<h3>Добавить комментарий!</h3>
				<div class="hidden-comment-form">
					{addcomments}
				</div>
			</div>
			{comments}
			<div style="clear: both; height: 10px;"></div>
		</div>
	</div>
	
	<div style="clear: both;height: 20px;"></div>
	
</div>