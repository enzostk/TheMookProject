class PagesController < ApplicationController

  def team  
  end

  def contact
  end

  def home
    @name = params[:name]
    @gossips = Gossip.all
  end

  def welcome
    @name = params[:name]
    @gossips = Gossip.all
  end

  def potins
    @gossips = Gossip.all
    @id = params[:id]
  end
end