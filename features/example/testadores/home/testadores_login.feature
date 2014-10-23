# language: pt

Funcionalidade: Validação de login da Comunidade Testadores

	No site da Comunidade Testadores central do cliente
	Como um colaborador do site
	Eu quero executar o login de um usuário

@wip
Cenario: Logando no site com usuário e senha válida  
    Quando eu vou para a pagina da Comunidade Testadores
    E eu executo logon no site
    Entao eu verei "Olá validacao," em "#form-login div"
    Quando eu pressiono "Logout"
    Entao eu verei "Esqueceu sua senha?" em "#form-login ul li a" 

@wip
Cenario: Logando no site com usuário válido e senha inválida  
    Quando eu vou para a pagina da Comunidade Testadores
    E eu preencho o campo "username" com "validacao"
    E eu preencho o campo "passwd" com "inicial123"
    E eu pressiono "Entrar"
    Entao eu verei "Nome de usuário e senha não conferem ou você ainda não possui uma conta." em ".error.message.fade ul li"

@wip
Cenario: Logando no site com usuário inválido e senha válida  
    Quando eu vou para a pagina da Comunidade Testadores
    E eu preencho o campo "username" com "valida"
    E eu preencho o campo "passwd" com "inicial1234"
    E eu pressiono "Entrar"
    Entao eu verei "Nome de usuário e senha não conferem ou você ainda não possui uma conta." em ".error.message.fade ul li"

@wip
Cenario: Logando no site com usuário inválido e senha inválida  
    Quando eu vou para a pagina da Comunidade Testadores
    E eu preencho o campo "username" com "valida"
    E eu preencho o campo "passwd" com "inicial123"
    E eu pressiono "Entrar"
    Entao eu verei "Nome de usuário e senha não conferem ou você ainda não possui uma conta." em ".error.message.fade ul li"

@wip
Cenario: Logando no site com usuário e/ou senha inválida  
    Quando eu vou para a pagina da Comunidade Testadores
    Entao eu preencho e valido os campos com os seguintes atributos:
    | username  | password    | result                                   |
    | qalwfat   | inicial123  | Nome de usuário e senha não conferem ou você ainda não possui uma conta. |
    | qalwfa    | inicial1234 | Nome de usuário e senha não conferem ou você ainda não possui uma conta. |
    | qalwfa    | inicial123  | Nome de usuário e senha não conferem ou você ainda não possui uma conta. |
  