{*
	variables that are available:
	- {$widgetBlogRecentArticlesList}: contains an array with all posts, each element contains data about the post
*}

{option:widgetBlogRecentArticlesList}
	<section id="blogRecentArticlesListWidget" class="mod content">
		<div class="inner">
			<header class="hd">
				<h3>{$lblRecentArticles|ucfirst}</h3>
			</header>
			<div class="bd">
				<ul>
					{iteration:widgetBlogRecentArticlesList}
						<li><a href="{$widgetBlogRecentArticlesList.full_url}" title="{$widgetBlogRecentArticlesList.title}">{$widgetBlogRecentArticlesList.title}</a></li>
					{/iteration:widgetBlogRecentArticlesList}
				</ul>
			</div>
			<footer class="links">
				<ul>
					<li class="overview"><span>&nbsp;</span><a href="{$var|geturlforblock:'blog'}">{$lblBlogArchive|ucfirst}</a></li>
				</ul>
			</footer>
		</div>
	</section>
{/option:widgetBlogRecentArticlesList}