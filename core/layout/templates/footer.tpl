<footer id="footer">
	<div id="footerLogo">
		<p>&copy; {$now|date:'Y'} {$siteTitle}</p>
	</div>
	<nav id="footerNavigation">
		<p>
			{option:footerLinks}
				{iteration:footerLinks}
					<a href="{$footerLinks.url}" title="{$footerLinks.title}"{option:footerLinks.rel} rel="{$footerLinks.rel}"{/option:footerLinks.rel}>
						{$footerLinks.navigation_title}
					</a> - 
				{/iteration:footerLinks}
			{/option:footerLinks}
			<a href="http://www.fork-cms.com" title="Fork CMS">Fork CMS</a>
		</p>
	</nav>
</footer>