module Actions
  def goto_login
    visit "/"
    click_on "Login"
  end

  def login_with(email, senha)
    find("#user_email").set email
    find("#user_password").set senha

    click_on "Log in"
  end

  def login_alert
    return find(".message-body").text
  end
end
