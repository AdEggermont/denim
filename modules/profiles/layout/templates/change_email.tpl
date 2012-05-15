<section id="updateEmailForm" class="mod commentForm horizontal">
	{* Success *}
	{option:updateEmailSuccess}
		<div class="message success"><p>{$msgUpdateEmailIsSuccess}</p></div>
	{/option:updateEmailSuccess}
	<div class="bd">
		{form:updateEmail}
			<fieldset>
				<p{option:txtPasswordError} class="errorArea"{/option:txtPasswordError}>
					<label for="password">{$lblPassword|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
					{$txtPassword}{$txtPasswordError}
				</p>
				<p{option:txtEmailError} class="errorArea"{/option:txtEmailError}>
					<label for="email">{$lblEmail|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
					{$txtEmail}{$txtEmailError}
				</p>
				<p>
					<button class="inputSubmit" type="submit" >{$lblSave|ucfirst}</button>
				</p>
			</fieldset>
		{/form:updateEmail}
	</div>
</section>
