{option:!resendActivationHideForm}
	<section id="resendActivationForm" class="mod commentForm horizontal">
		{* Success *}
		{option:resendActivationSuccess}
			<div class="message success"><p>{$msgResendActivationIsSuccess}</p></div>
		{/option:resendActivationSuccess}
		<div class="bd">
			{form:resendActivation}
				<fieldset>
					<p {option:txtEmailError} class="errorArea"{/option:txtEmailError}>
						<label for="email">{$lblEmail|ucfirst} <abbr title="{$lblRequiredField}">*</abbr></label>
						{$txtEmail} {$txtEmailError}
					</p>
					<p>
						<button class="inputSubmit" type="submit" >{$lblSave|ucfirst}</button>
					</p>
				</fieldset>
			{/form:resendActivation}
		</div>
	</section>
{/option:!resendActivationHideForm}