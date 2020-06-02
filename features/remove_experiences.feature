# language:pt

@javascript
Funcionalidade: Adicionar experiências ao Portfólio
  Adicionar uma nova experiência ao Portfólio

  Cenário de Fundo:
    Dado usuário está logado
    E possui o portfólio com slug 'my_portfolio'
    E o portfólio possui 1 Experiência
    E acesso a página de edição do portfólio

  Cenário: Usário remove uma Experiência do Portfólio
    Quando remove a Experiência
    Então a Experiência É removida do Portfólio