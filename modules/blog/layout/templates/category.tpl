{*
	variables that are available:
	- {$items}: contains an array with all posts, each element contains data about the post
*}

{option:!items}
	<div id="blogIndex">
		<section class="mod">
			<div class="bd content">
				<p>{$msgBlogNoItems}</p>
			</div>
		</section>
	</div>
{/option:!items}
{option:items}
	<div id="blogIndex">
		{iteration:items}
			<article class="mod">
				<header class="hd">
					<h3><a href="{$items.full_url}" title="{$items.title}">{$items.title}</a></h3>
				</header>
				<div class="bd content">
					<ul class="info">
						<li>{$msgWrittenBy|ucfirst|sprintf:{$items.user_id|usersetting:'nickname'}} {$lblOn} {$items.publish_on|date:{$dateFormatLong}:{$LANGUAGE}} {$lblIn} {$lblThe} {$lblCategory} <a href="{$items.category_full_url}" title="{$items.category_title}">{$items.category_title}</a></li>
					</ul>
					<span class="extra upp">{$items.publish_on|date:'l'}<h4>{$items.publish_on|date:'d'}/{$items.publish_on|date:'m'}</h4></span>
					<div class="blogText">
						{option:items.image}<img src="{$FRONTEND_FILES_URL}/blog/images/source/{$items.image}" alt="{$items.title}" />{/option:items.image}
						{option:!items.introduction}{$items.text}{/option:!items.introduction}
						{option:items.introduction}{$items.introduction}{/option:items.introduction}
					</div>
				</div>
			</article>
		{/iteration:items}
	</div>
	{include:core/layout/templates/pagination.tpl}
{/option:items}
