Dado("Login com {string} e {string}") do |email, senha|
  goto_login

  login_with(email, senha)
end

Dado("que eu gosto muito de {string}") do |category|
  find("a[href='/search/new']").click
  find("img[src$='#{category.downcase}.png']").click
end

Quando("toco a seguinte música:") do |table|
  @parody = table.rows_hash

  find("a", text: @parody[:banda]).click

  song = find(".song-item", text: @parody[:parodia])
  song.find(".fa-play-circle").click
end

Então("essa paródia deve ser reproduzida") do
  song_play = find(".playing")
  expect(song_play).to have_text @parody[:parodia]

  sleep 10
end
