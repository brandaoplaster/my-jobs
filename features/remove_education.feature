# language:pt

@javascript
Funcionalidade: Remover educações do Portfólio
  Remove uma educação do Portfólio

  Cenário de Fundo:
    Dado usuário está logado
    E possui o portfólio com slug 'my_portfolio'
    E o portfólio possui 1 Educação
    E acessa a página de edição do portfólio

  Cenário: Usuário remove uma Educação do Portfólio
    Quando remove a Educação
    Então a Educação é removido do Portfólio