Dado('que estou na pagina de login') do
    visit 'https://pauliceia.unifesp.br/portal/login'
    sleep 2
    @test = LoginPage.new
end

Quando('eu logar {string}, {string}') do |email, password|
    @test.userLogin(email, password)
end
  
Entao('deve acessar o site com sucesso') do |mensagem|
    actual_message = @test.findWelcome
    expect(actual_message).to eq(mensagem)
end
Entao('a mensagem de welcome {string} ira aparecer') do |mensagem|
    actual_message = @test.findWelcome
    expect(actual_message).to eq(mensagem)
end

Entao("a mensagem de erro {string} ira aparecer") do |mensagem|
    actual_message = @test.findError
    expect(actual_message).to eq(mensagem)
end
  
