{*
	variables that are available:
	- {$questions}: contains all questions inside this category
*}

<section id="faqCategory" class="mod">
	<header class="hd">
		<h3>{$category.title}</h3>
	</header>
	<div class="bd content">
		{option:questions}
			<section class="mod">
				<div class="bd">
					<ul>
						{iteration:questions}
							<li><a href="{$questions.full_url}">{$questions.question}</a></li>
						{/iteration:questions}
					</ul>
				</div>
			</section>
		{/option:questions}

		{option:!questions}
			<p>{$msgNoQuestionsInCategory|ucfirst}</p>
		{/option:!questions}
		<footer class="links">
			<ul>
				<li class="overview"><span>&nbsp;</span><a href="{$var|geturlforblock:'faq'}" title="{$lblToFaqOverview|ucfirst}">{$lblToFaqOverview|ucfirst}</a></li>
			</ul>
		</footer>
	</div>
</section>