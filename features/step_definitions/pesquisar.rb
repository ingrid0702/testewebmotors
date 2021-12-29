Dado('acesso o site webmotors') do
  sleep 40
  @utils.acessar_aplicacao
  sleep 20
end

Quando('pesquiso carros novos e usados') do
  
  all(EL["Menu_compra_carro"])[0].click
  find(EL["link_carro_novo_usado"]).click
  
end

Quando('seleciono um carro da lista') do
  all(EL["bloco_carro_lista"])[1].click
  
end

Então('verifico detalhes e preco dos veiculos') do
   
  expect(has_css?(EL["preco_carro"], :visible => true, wait: 5)).to be true
  expect(has_css?(EL["combustivel"], :visible => true, wait: 5)).to be 
  expect(has_css?(EL["marca"], :visible => true, wait: 5)).to be true
  expect(has_css?(EL["troca_carros"], :visible => true, wait: 5)).to be true
  preco= find(EL["preco_carro"]).text
  p preco 
  
end