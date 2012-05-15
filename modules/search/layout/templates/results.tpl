{*
	variables that are available:
	- {$searchResults}: contains an array with all items, each element contains data about the item
	- {$searchTerm}: the term that has been searched for
*}

{option:searchTerm}
	<section id="searchResults" class="mod">
		<header class="hd">
			<h3>{$lblSearchTerm|ucfirst}: {$searchTerm}</h3>
		</header>
		{option:!searchResults}
			<div class="bd content">
				<p>{$msgSearchNoItems}</p>
			</div>
		{/option:!searchResults}
		{option:searchResults}
			<div class="bd content">
			{iteration:searchResults}
				<div class="big">
					<h2>
						<a href="{$searchResults.full_url}" title="{$searchResults.title}">
							{$searchResults.title}
						</a>
					</h2>
					{option:!searchResults.introduction}{$searchResults.text|truncate:250}{/option:!searchResults.introduction}
					{option:searchResults.introduction}{$searchResults.introduction|truncate:250}{/option:searchResults.introduction}
					</div>
				{/iteration:searchResults}
			</div>
		{/option:searchResults}
	</section>
	{include:core/layout/templates/pagination.tpl}
{/option:searchTerm}