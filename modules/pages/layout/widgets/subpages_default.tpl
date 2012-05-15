<div class="commentForm">
	<div class="stamp">
	{option:widgetSubpages}
		<ul>
			<li>
				<h3>{$lblPages|ucfirst}</h3>
			</li>
		{iteration:widgetSubpages}
			<li>
				<ul>
					<li><a href="{$widgetSubpages.full_url}" title="{$widgetSubpages.title}">{$widgetSubpages.title}</a></li>
					<li>{$widgetSubpages.description}</li>
				</ul>
			</li>
		{/iteration:widgetSubpages}
		<ul>
	{/option:widgetSubpages}
	</div>
</div>