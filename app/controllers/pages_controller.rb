class PagesController < ApplicationController
  before_action :authenticate_user!
  def home
  	@resources = Resource.all
  	@events = Event.where('start_time >= ?', Time.now.beginning_of_day)
  	@homeworks = Homework.where('due >= ?', Time.now.beginning_of_day)
  end

  def about 
	end 


end
