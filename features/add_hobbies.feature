# language:pt

@javascript
Funcionalidade: Adicionar hobbies ao Portfólio
  Adiciona um novo Hobby ao Portfólio

  Cenário de Funco:
    Dado usuário está logado
    E possui o portfólio com slug 'my_portfolio'
    E o portfólio possui um bloco de Hobby
    E acessa a página de edição do Portfólio

  Cenário: Usuário adiciona um novo Hobby ao Portfólio
    Quando adiciona um Hobby
    Então o Hobby é adicionado ao Portfólio