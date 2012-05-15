{option:navigation}
	<ul>
		<li class="gone"><span class="detail" id="leftdetail" >&nbsp;</span></li>
		<li class="gone"><span class="detail" id="rightdetail" >&nbsp;</span></li>
		{iteration:navigation}
			<li{option:navigation.selected} class="selected"{/option:navigation.selected}>
				<a href="{$navigation.link}" title="{$navigation.navigation_title}"{option:navigation.nofollow} rel="nofollow"{/option:navigation.nofollow}>{$navigation.navigation_title}</a>
				{option:navigation.selected}{$navigation.children}{/option:navigation.selected}
			</li>
		{/iteration:navigation}
	</ul>
{/option:navigation}