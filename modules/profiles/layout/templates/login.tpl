

<section id="loginForm" class="mod">
	<header class="hd">
		<h3>{$lblLogin|ucfirst}</h3>
	</header>
	<div class="bd commentForm">
		<div class="horizontal">
		{* Error *}
			{option:formError}
				<div class="message error">
					{option:loginError}
						<p>{$loginError}</p>
					{/option:loginError}
				</div>
			{/option:formError}
			{form:login}
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
						<label for="remember">{$lblRememberMe|ucfirst}</label>
						{$chkRemember}{$chkRememberError}
					</p>
					<p>
						<button class="inputSubmit" type="submit" >{$lblLogin|ucfirst}</button>
					</p>
				</fieldset>
			{/form:login}
			<footer class="ft">
				<p>
					<a href="{$var|geturlforblock:'profiles':'forgot_password'}" title="{$msgForgotPassword}">{$msgForgotPassword}</a>
				</p>
			</footer>
		</div>
	</div>
</section>