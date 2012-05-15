{option:!forgotPasswordHideForm}
	<section id="forgotPasswordForm" class="mod commentForm horizontal">
		{* Success *}
		{option:forgotPasswordSuccess}
			<div class="message success"><p>{$msgForgotPasswordIsSuccess}</p></div>
		{/option:forgotPasswordSuccess}
		<div class="bd">
			{form:forgotPassword}
				<fieldset>
					<p{option:txtEmailError} class="errorArea"{/option:txtEmailError}>
						<label for="email">{$lblEmail|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
						{$txtEmail}{$txtEmailError}
					</p>
					<p>
						<button class="inputSubmit" type="submit" >{$lblSend|ucfirst}</button>
					</p>
				</fieldset>
			{/form:forgotPassword}
		</div>
	</section>
{/option:!forgotPasswordHideForm}