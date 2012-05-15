<header class="hd">
	<h3>{$lblUnsubscribe|ucfirst}</h3>
</header>
<section id="unsubscribeIndex" class="mod commentForm horizontal">
		<div class="bd">
			{option:unsubscribeHasFormError}<div class="message error"><p>{$errFormError}</p></div>{/option:unsubscribeHasFormError}
			{option:unsubscribeHasError}<div class="message error"><p>{$errUnsubscribeFailed}</p></div>{/option:unsubscribeHasError}
			{option:unsubscribeIsSuccess}<div class="message success"><p>{$msgUnsubscribeSuccess}</p></div>{/option:unsubscribeIsSuccess}

			{option:!unsubscribeHideForm}
				{form:unsubscribe}
					<p{option:txtEmailError} class="errorArea"{/option:txtEmailError}>
						<label for="email">{$lblEmail|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
						{$txtEmail} {$txtEmailError}
					</p>
					<p>
						<button id="send" class="inputSubmit" type="submit" name="send" >{$lblSend|ucfirst}</button>
					</p>
				{/form:unsubscribe}
			{/option:!unsubscribeHideForm}
		</div>
</section>