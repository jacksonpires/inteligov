class WelcomeController < ApplicationController
  COMPANY = 'Inteligov'
  COURSE = 'Ruby on Rails, first steps'

  def index
  end

  def informations
    @info = "#{COMPANY} - #{COURSE} - #{params[:name]} -  Versão: #{params[:version]}"
  end
end
