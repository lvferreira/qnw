Dado("que acesso a página de login") do
  goto_login
end

Quando("submeto minhas credenciais com:") do |login_table|
  user = login_table.rows_hash
  login_with(user[:email], user[:senha])
end

Então("deve ser exibida a mensagem: {string}") do |expected_message|
  expect(login_alert).to eql expected_message
end
