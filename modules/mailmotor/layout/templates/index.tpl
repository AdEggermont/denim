<header class="hd">
	<h3>{$lblSentMailings|ucfirst}</h3>
</header>
<section id="mailmotorIndex" class="mod">
	<div class="bd content">
		{option:dataGrid}
			{$dataGrid}
		{/option:dataGrid}

		{option:!dataGrid}
			<p>{$msgNoSentMailings}</p>
		{/option:!dataGrid}
	</div>
</section>