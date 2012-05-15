{option:!registerHideForm}
<section id="registerForm" class="mod">
	<header class="hd">
		<h3>{$lblRegister|ucfirst}</h3>
	</header>
	<div class="bd commentForm horizontal">
		{* Success *}
		{option:registerIsSuccess}
			<div class="message success"><p>{$msgRegisterIsSuccess}</p></div>
		{/option:registerIsSuccess}
		{form:register}
			<fieldset>
				<p{option:txtEmailError} class="errorArea"{/option:txtEmailError}>
					<label for="email">{$lblEmail|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
					{$txtEmail}{$txtEmailError}
				</p>
				<p{option:txtPasswordError} class="errorArea"{/option:txtPasswordError}>
					<label for="password">{$lblPassword|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
					{$txtPassword}{$txtPasswordError}
				</p>
				<p>
					<label for="showPassword">{$lblShowPassword|ucfirst}</label>
					{$chkShowPassword}
				</p>
				<p>
					<button class="inputSubmit" type="submit" >{$lblRegister|ucfirst}</button>
				</p>
			</fieldset>
		{/form:register}
	</div>
</section>
{/option:!registerHideForm}