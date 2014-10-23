padrao-bdd
==========

Projeto exemplo para realização de testes com a técnica BDD utiliando Ruby + Cucumber + Capybara + PhantomJS + Poltergeist

BDD - Behavier Driven Development
Mais sobre a técnica: http://www.bugbang.com.br/entendendo-bdd-com-cucumber-parte-i/

Para executar o projeto basta:

- Se possuir o RVM não precisa instalar nada. Se não tiver, tem que ter o Ruby 2.1.3 instalado.
- Instalar o PhantomJS (versão 1.9.7) na máquina.
	* (no iOS) brew install phantomjs 
	* (no Ubuntu) sudo apt-get install phantomjs
	(para verificar a versão: phantomjs --version)
- Baixar o projeto.
- Executar o bundle.
- Executar o cucumber colocando o diretório e o time que está trabalhando.
 
Ex.:
	# chamando com poltergeist (sem browser): 
	bundle exec cucumber features/example/testadores/home/testadores_login.feature -p testers

	# chamando sem poltergeist (levantando browser):
	IN_BROWSER=true bundle exec cucumber features/example/testadores/home/testadores_login.feature -p testers