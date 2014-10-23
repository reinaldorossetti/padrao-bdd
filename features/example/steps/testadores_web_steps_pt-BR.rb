# encoding: utf-8
# IMPORTANT: This file is generated by cucumber-rails - edit at your own peril.
# It is recommended to regenerate this file in the future when you upgrade to a 
# newer version of cucumber-rails. Consider adding your own code to a new file 
# instead of editing this one. Cucumber will automatically load all features/**/*.rb
# files.
require File.dirname(__FILE__) + '/../../step_definitions/generic_qa.rb'

include GenericQA

Quando(/^eu executo logon no site$/) do
  steps %Q{ Quando eu preencho o campo "username" com "validacao"
            E eu preencho o campo "passwd" com "inicial1234"
            E eu pressiono "Entrar"}  
end

Entao(/^eu preencho e valido os campos com os seguintes atributos:$/) do |table|
    data =  retorna_tabela_hash(table)
    count = data['username'].size.to_i
    count.times do | vnum |
    	fill_in('username', :with => data['username'][vnum].to_s)
    	fill_in('passwd'  , :with => data['password'][vnum].to_s)
    	click_button('Entrar')
	    expect(page).to have_css ".error.message.fade ul li", data['result'][vnum].to_s
	end
end

