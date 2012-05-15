{*
	variables that are available:
	- {$widgetBlogRecentArticlesFull}: contains an array with all posts, each element contains data about the post
*}

{option:widgetBlogRecentArticlesFull}
	<section id="blogRecentArticlesFullWidget" class="mod content">
		<header class="hd">
			<h3>{$lblRecentArticles|ucfirst}</h3>
		</header>
		<div class="bd">
			{iteration:widgetBlogRecentArticlesFull}
				<article class="article">
					<header class="hd">
						<h3><a href="{$widgetBlogRecentArticlesFull.full_url}" title="{$widgetBlogRecentArticlesFull.title}">{$widgetBlogRecentArticlesFull.title}</a></h3>
						<ul class="info">
							<li>{$msgWrittenBy|ucfirst|sprintf:{$widgetBlogRecentArticlesFull.user_id|usersetting:'nickname'}} - {$widgetBlogRecentArticlesFull.publish_on|date:{$dateFormatShort}:{$LANGUAGE}} {$lblIn}
								<a href="{$widgetBlogRecentArticlesFull.category_full_url}" title="{$widgetBlogRecentArticlesFull.category_title}">{$widgetBlogRecentArticlesFull.category_title}</a>
								{option:!widgetBlogRecentArticlesFull.comments}<a href="{$widgetBlogRecentArticlesFull.full_url}#{$actComment}">{$msgBlogNoComments|ucfirst}</a>{/option:!widgetBlogRecentArticlesFull.comments}
								{option:widgetBlogRecentArticlesFull.comments}
									{option:widgetBlogRecentArticlesFull.comments_multiple} - <a href="{$widgetBlogRecentArticlesFull.full_url}#{$actComments}">{$msgBlogNumberOfComments|sprintf:{$widgetBlogRecentArticlesFull.comments_count}}</a>{/option:widgetBlogRecentArticlesFull.comments_multiple}
									{option:!widgetBlogRecentArticlesFull.comments_multiple} - <a href="{$widgetBlogRecentArticlesFull.full_url}#{$actComments}">{$msgBlogOneComment}</a>{/option:!widgetBlogRecentArticlesFull.comments_multiple}
								{/option:widgetBlogRecentArticlesFull.comments}
								</li>
						</ul>
					</header>
					<div class="bd">
						{option:!widgetBlogRecentArticlesFull.introduction}{$widgetBlogRecentArticlesFull.text|truncate:'250'}{/option:!widgetBlogRecentArticlesFull.introduction}
						{option:widgetBlogRecentArticlesFull.introduction}{$widgetBlogRecentArticlesFull.introduction|truncate: '250'}{/option:widgetBlogRecentArticlesFull.introduction}
					</div>
				</article>
				<br/>
			{/iteration:widgetBlogRecentArticlesFull}
		</div>
		<footer class="ft">
			<p>
				<a href="{$var|geturlforblock:'blog'}">{$lblBlogArchive|ucfirst}</a>
				<a id="RSSfeed" href="{$var|geturlforblock:'blog':'rss'}">{$lblSubscribeToTheRSSFeed|ucfirst}</a>
			</p>
		</footer>
	</section>
{/option:widgetBlogRecentArticlesFull}