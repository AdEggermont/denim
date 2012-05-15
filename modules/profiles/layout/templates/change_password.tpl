<section id="updatePasswordForm" class="mod commentForm horizontal">
	{* Success *}
	{option:updatePasswordSuccess}
		<div class="message success"><p>{$msgUpdatePasswordIsSuccess}</p></div>
	{/option:updatePasswordSuccess}
	<div class="bd">
		{form:updatePassword}
			<fieldset>
				<p{option:txtOldPasswordError} class="errorArea"{/option:txtOldPasswordError}>
					<label for="oldPassword">{$lblOldPassword|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
					{$txtOldPassword}{$txtOldPasswordError}
				</p>
				<p{option:txtNewPasswordError} class="errorArea"{/option:txtNewPasswordError}>
					<label for="newPassword">{$lblNewPassword|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
					{$txtNewPassword}{$txtNewPasswordError}
				</p>
				<p>
					<label for="showPassword"> {$lblShowPassword|ucfirst}</label>
					{$chkShowPassword}
				</p>
				<p>
					<button class="inputSubmit" type="submit" >{$lblSave|ucfirst}</button>
				</p>
			</fieldset>
		{/form:updatePassword}
	</div>
</section>