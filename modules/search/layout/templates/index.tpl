{*
	variables that are available:
	- {$searchResults}: contains an array with all items, each element contains data about the item
	- {$searchTerm}: the term that has been searched for
*}

<header class="hd">
	<h3>{$lblSearchAgain|ucfirst}</h3>
</header>

<section id="searchIndex" class="mod commentForm horizontal">
	<div class="bd">
		{form:search}
			<p{option:txtQError} class="errorArea"{/option:txtQError}>
				<label for="q">{$lblSearch|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
				{$txtQ} {$txtQError}
			</p>
			<p>
				<button id="submit" class="inputSubmit" type="submit" name="submit" >{$lblSearch|ucfirst}</button>
			</p>
		{/form:search}
	</div>
</section>

{* don't remove this container nor replace the id - it'll be used to populate the search results live as you type *}
<div id="searchContainer">
	{include:modules/search/layout/templates/results.tpl}
</div>