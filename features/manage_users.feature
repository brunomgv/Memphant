Feature: Create and manage accounts users
	In order to access the application 
	Like an user
	I want to create a new account and manage it
	
  Background:
	Given I logged in the application like administrator
	
  Scenario: Creating a new account
	Given I follow "New account"
	When I fill in "user_email" with "joao@server.com" 
	And I fill in "user_nickname" with "joaojs"
	And I fill in "user_password" with "1234"
	And I fill in "user_password_confirmation" with "1234"
	And I select "Public" from "user_privacy"
	And I select "Male" from "user_gender"
	And I fill in "user_birthday" with "04/12/1986"
	And I fill in "user_twitter" with "joaojose"
	And I fill in "user_facebook" with "joaojose"
	And I fill in "user_msn" with "joaojose@hotmail.com"
	And I fill in "user_gtalk" with "joaojose@gmail.com"
	And I select "GMT-4" from "user_time_zone"
	And I fill in "user_locale" with "Campo Grande - MS"
	And I check "I agree with all terms of use"
	And I press "Create"
	Then I should see "E-mail sent successfully for account confirmation"
	
	# *nome
	# 	*email - usado tambem para o login
	# 	*apelido
	# 	*senha
	# 	redes sociais e mensageiros
	# 	privacidade 
	# 	sexo 
	# 	*data nascimento
	# 	localidade
	# 	fuso
	# 	*aceitar o termo de uso (não vai ser salvo, mas acho importante para nao ser esquecido na hora de fazer o formulario)