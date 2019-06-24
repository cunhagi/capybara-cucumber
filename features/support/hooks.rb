Before do
  @cadastro   = SignUpPage.new
  @entrar     = SignInPage.new
  @edit       = EditProfilePage.new
end

After do
  Capybara.reset_sessions!
end

# time out
Capybara.default_max_wait_time = 30
