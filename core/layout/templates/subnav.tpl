{include:core/layout/templates/head.tpl}
<body id="subnav" class="{$LANGUAGE}" itemscope itemtype="http://schema.org/WebPage">
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

			<div class="column side clearfix">
				{* Side position *}
				{iteration:positionSide}
					{option:positionSide.blockIsHTML}
						<section class="mod">
							<div class="bd content">
								{$positionSide.blockContent}
							</div>
						</section>
					{/option:positionSide.blockIsHTML}
					{option:!positionSide.blockIsHTML}
						{$positionSide.blockContent}
					{/option:!positionSide.blockIsHTML}
				{/iteration:positionSide}
			</div>

			<div class="column main">
				<header class="hd">
					<h3>{$pageTitle}</h3>
				</header>
				{* Main position *}
				{iteration:positionMain}
					{option:positionMain.blockIsHTML}
						<section class="mod contentBlock">
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