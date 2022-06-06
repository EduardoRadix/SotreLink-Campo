# encoding: UTF-8
Dado("que eu acesso a tela de Login") do
    @screen.login.clicando_permitir_login()
end
Quando("submeto minhas credencias:") do |table|
    usuario = table.rows_hash
    @screen.login.acessando(usuario)
end
Então("devo estar logado") do
    home = @screen.login.tela_home_validacao()
    expect(home.displayed?).to be true
end