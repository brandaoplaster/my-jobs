# language:pt

@javascript
Funcionalidade: Remove Hobbies do Portfólio
  Remove um Hooby do Portfólio

  Cenário de Fundo:
    Dado usuário está logado
    E possui o portfólio com slug 'my_portfolio'
    E o portfólio possui 1 Hooby
    E acessa a página de edição do portfólio

  Cenário: Usuário remove um Hobby do Portfólio
    Quando remove o Hooby
    Então o Hooby é removido do Portfólio