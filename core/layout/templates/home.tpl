{include:core/layout/templates/head.tpl}
<body class="{$LANGUAGE}" itemscope itemtype="http://schema.org/WebPage">
	<div id="pushWrapper">
		<header id="header" class="clearfix">

			<nav id="headerLanguage" class="clearfix">
				{include:core/layout/templates/languages.tpl}
			</nav>

			<div id="logo">
				<h1><a href="/">{$siteTitle}</a></h1>
			</div>

			{iteration:positionTop}
				{$positionTop.blockContent}
			{/iteration:positionTop}

		</header>

		<nav id="headerNavigation">
			{$var|getnavigation:'page':0:1}
		</nav>

		<div id="mainWrapper" class="clearfix">

			<div class="eyecatch clearfix">
				{iteration:positionEyecatch}
					{option:positionEyecatch.blockIsHTML}
						<section class="mod">
							<div class="bd content">
								{$positionEyecatch.blockContent}
							</div>
						</section>
					{/option:positionEyecatch.blockIsHTML}
					{option:!positionEyecatch.blockIsHTML}
						{$positionEyecatch.blockContent}
					{/option:!positionEyecatch.blockIsHTML}
				{/iteration:positionEyecatch}
			</div>

			<div class="column main small">
				{* Left position *}
				{iteration:positionLeft}
					{option:positionLeft.blockIsHTML}
						<section class="mod">
							<div class="bd content">
								{$positionLeft.blockContent}
							</div>
						</section>
					{/option:positionLeft.blockIsHTML}
					{option:!positionLeft.blockIsHTML}
						{$positionLeft.blockContent}
					{/option:!positionLeft.blockIsHTML}
				{/iteration:positionLeft}
			</div>

			<div class="column main small">
				{* Main position *}
				{iteration:positionMain}
					{option:positionMain.blockIsHTML}
						<section class="mod">
							<div class="bd content">
								{$positionMain.blockContent}
							</div>
						</section>
					{/option:positionMain.blockIsHTML}
					{option:!positionMain.blockIsHTML}
						{$positionMain.blockContent}
					{/option:!positionMain.blockIsHTML}
				{/iteration:positionMain}
			</div>

			<div class="column main small-last">
				{* Right position *}
				{iteration:positionRight}
					{option:positionRight.blockIsHTML}
						<section class="mod">
							<div class="bd content">
								{$positionRight.blockContent}
							</div>
						</section>
					{/option:positionRight.blockIsHTML}
					{option:!positionRight.blockIsHTML}
						{$positionRight.blockContent}
					{/option:!positionRight.blockIsHTML}
				{/iteration:positionRight}
			</div>
			
		</div>

		<noscript>
			<div class="message notice">
				<h4>{$lblEnableJavascript|ucfirst}</h4>
				<p>{$msgEnableJavascript}</p>
			</div>
		</noscript>

		<div class="push"></div>

	</div>

	<div id="bottomWrapper">
		{include:core/layout/templates/footer.tpl}
	</div>

	{* General Javascript *}
	{iteration:jsFiles}
		<script src="{$jsFiles.file}"></script>
	{/iteration:jsFiles}

	{* Theme specific Javascript *}
	<script src="{$THEME_URL}/core/js/denim.js"></script>

	<script>
		$(document).ready(function()
		{
			// placeholder text
			$('#qWidget').val('{$lblSearchTerm}');

			$('#qWidget').on('click', function(){
				if($('#qWidget').val() == '{$lblSearchTerm}')
				{
					$('#qWidget').val('');
				}
			});
		});
	</script>

	{* Site wide HTML *}
	{$siteHTMLFooter}
	
</body>
</html>