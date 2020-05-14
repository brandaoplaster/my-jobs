# language:pt

@javascript
Funcionalidade: Adicionar um bloco ao Portfólio
	Adicionar um novo bloco de algum tipo ao Portfólio

	Cenário de Fundo:
		Dado usuário está logago
		E possui o portfólio com slug 'my_portfolio'
		E acessa a página de edição do portfólio

	Cenário: Usuário adicionar um novo bloco ao Portfólio
		Quando adiciona um bloco 'Perfil' à esquerda
		Então o bloco 'Perfil' é adicionando ao portfólio

	Cenário: Bloco já existe
		Dado portfólio possui o bloco 'Educação' à esquerda
		Quando adiciona um bloco 'Educação' à direita
		Então a mensagem de erro é exibida
			| message                    |
			| Kind has already bee taken |