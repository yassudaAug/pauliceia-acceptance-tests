Dado('que o usuario esteja na pagina de busca') do
    visit 'https://pauliceia.unifesp.br/portal'
    sleep 2
    @test = SearchPage.new
end

Quando('ele pesquisar pela {string}, {string}, {string}') do |rua, numero, data|
    @test.searchWayPoint(rua, numero, data)
end

Entao('o waypoint do endereco sera exibido') do
    expect(@test.findWayPoint).to eq('1000 km')
end

Quando('ele pesquisar pela {string}, {string}, {string} de endereco nao existente') do |rua, numero, data|
    @test.searchWayPoint(rua, numero, data)
end
  
Entao('a mensagem de erro {string} deve aparecer') do |mensagem|
    actual_message = @test.findError
    expect(actual_message).to eq(mensagem)
end