#http://parodify.qaninja.com.br/

Dado("que acesso a página de cadastro") do
  visit "/"
  click_on "EXPERIMENTE AGORA"
end

Quando("submeto o meu cadastro com:") do |reg_table|
  user = reg_table.rows_hash
  delorean user[:email]
  find("#user_email").set user[:email]
  find("#user_password").set user[:senha]
  find("#user_password_confirmation").set user[:senha_confirma]
  # sleep 5 # think_timer

  click_on "Cadastrar"
end

Então("devo ser redirecionado para a área logada") do
  expect(page).to have_css ".dashboard"
end

Então("devo ver a mensagem: {string}") do |expect_message|
  alert find(".message p")
  expect(alert.text).eql expect_message
end

Quando("acesso a página de cadastro") do
  steps %(
    Dado que acesso a página de cadastro
  )
end

Então("deve exibir o seguinte css_selector: {string}") do |css_selector|
  expect(page).to have_css css_selector
end
