# encoding: UTF-8
Dado("que eu esteja logado no app") do |table|
    @screen.login.clicando_permitir_login()
    usuario = table.rows_hash
    @screen.login.acessando(usuario)
    home = @screen.login.tela_home_validacao()
    expect(home.displayed?).to be true
end

Quando("preencho os campos da os avulsa {string}") do |prioridade|
    @screen.os_avulsa.preenchendo_os_avulsa(prioridade)
end

Então("devo criar uma os avulsa com sucesso") do
end
