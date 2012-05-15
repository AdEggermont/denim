<div id="blogDetail">
	<article class="mod article" itemscope itemtype="http://schema.org/Blog">
		<meta itemprop="interactionCount" content="UserComments:{$commentsCount}">
		<meta itemprop="author" content="{$item.user_id|usersetting:'nickname'}">
		<h1><a href="{$item.full_url}" title="{$item.title}">{$item.title}</a></h1>
		<div class="bd content" itemprop="articleBody">
			<ul class="info">
				<li>{$msgWrittenBy|ucfirst|sprintf:{$item.user_id|usersetting:'nickname'}} {$lblOn} {$item.publish_on|date:{$dateFormatLong}:{$LANGUAGE}} {$lblIn} {$lblThe} {$lblCategory} <a href="{$item.category_full_url}" title="{$item.category_title}">{$item.category_title}</a></li>
			</ul>
			<span class="extra upp">{$item.publish_on|date:'l'}<h4>{$item.publish_on|date:'d'}/{$item.publish_on|date:'m'}</h4></span>
			{option:item.image}<img src="{$FRONTEND_FILES_URL}/blog/images/source/{$item.image}" alt="{$item.title}" itemprop="image" />{/option:item.image}
			<div class="blogText">
				{$item.text}
			</div>
			<footer class="links">
				<ul>
					<li class="share"><span>&nbsp;</span><a href="#">{$lblShare|ucfirst}</a></li>
					<li class="overview"><span>&nbsp;</span><a href="{$var|geturlforblock:'blog'}">{$lblBlog|ucfirst}</a></li>
				</ul>
			</footer>
		</div>
	</article>

	{option:comments}
	<div  id="comment-{$comments.id}" ></div>
	<section id="blogComments" class="mod" itemscope itemtype="http://schema.org/Article">
		<meta itemprop="discusses" content="{$item.title}" />
		<header class="hd">
			<h3 id="{$actComments}">{$lblComments|ucfirst}</h3>
		</header>
			{iteration:comments}
				<div class="bd content">
					<ul class="info">
						<li>{option:comments.website}<a href="{$comments.website}">{/option:comments.website}
							{$comments.author}{option:comments.website}</a>{/option:comments.website}
							{$lblWrote}
							<time itemprop="commentTime" datetime="{$comments.created_on|date:'Y-m-d\TH:i:s'}">{$comments.created_on|timeago}:</time>
						</li>
					</ul>
					<span class="extra">{$comments.author}</span>
					<div class="blogText" itemprop="commentText">
						{$comments.text|cleanupplaintext}
					</div>
				</div>
			{/iteration:comments}
		</section>
	{/option:comments}

	{option:item.allow_comments}
	
		<section class="mod">
			<header class="hd">
				<h3 id="{$actComment}">{$msgComment|ucfirst}</h3>
			</header>
			<div class="bd commentForm horizontal">
				{option:commentIsInModeration}<div class="message warning"><p>{$msgBlogCommentInModeration}</p></div>{/option:commentIsInModeration}
				{option:commentIsSpam}<div class="message error"><p>{$msgBlogCommentIsSpam}</p></div>{/option:commentIsSpam}
				{option:commentIsAdded}<div class="message success"><p>{$msgBlogCommentIsAdded}</p></div>{/option:commentIsAdded}
			
				{form:commentsForm}
					<p {option:txtAuthorError}class="errorArea"{/option:txtAuthorError}>
						<label for="author">{$lblName|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
						{$txtAuthor} {$txtAuthorError}
					</p>
					<p {option:txtEmailError}class="errorArea"{/option:txtEmailError}>
						<label for="email">{$lblEmail|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
						{$txtEmail} {$txtEmailError}
					</p>
					<p class="bigInput{option:txtWebsiteError} errorArea{/option:txtWebsiteError}">
						<label for="website">{$lblWebsite|ucfirst}</label>
						{$txtWebsite} {$txtWebsiteError}
					</p>
					<p class="bigInput{option:txtMessageError} errorArea{/option:txtMessageError}">
						<label for="message">{$lblMessage|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
						{$txtMessage} {$txtMessageError}
					</p>
					<p>
						<button class="inputSubmit" type="submit" >{$msgComment|ucfirst}</button>
					</p>
				{/form:commentsForm}
			</div>
		</section>
	{/option:item.allow_comments}
</div>