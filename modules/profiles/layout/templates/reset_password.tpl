{option:!resetPasswordHideForm}
	<section id="resetPasswordForm" class="mod commentForm horizontal">
		{* Success *}
		{option:resetPasswordSuccess}
			<div class="message success"><p>{$msgResetPasswordIsSuccess}</p></div>
		{/option:resetPasswordSuccess}
		<div class="bd">
			{form:resetPassword}
				<fieldset>
					<p{option:txtPasswordError} class="errorArea"{/option:txtPasswordError}>
						<label for="password">{$lblPassword|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
						{$txtPassword}{$txtPasswordError}
					</p>
					<p>
						<label for="showPassword">{$chkShowPassword} {$lblShowPassword|ucfirst}</label>
					</p>
					<p>
						<button class="inputSubmit" type="submit" >{$lblSave|ucfirst}</button>
					</p>
				</fieldset>
			{/form:resetPassword}
		</div>
	</section>
{/option:!resetPasswordHideForm}