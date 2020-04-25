class NewCustomerForm
    include Capybara::DSL  # Capybara
    include FactoryBot::Syntax::Methods  # FactoryBot
    include Warden::Test::Helpers  # Devise
    include Rails.application.routes.url_helpers  # Routes
  

    def login(user)
        post_via_redirect member_session_path, 'member[email]' => member.email, 'member[password]' => member.password
    end
end