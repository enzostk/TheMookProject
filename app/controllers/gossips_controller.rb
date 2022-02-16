class GossipsController < ApplicationController
   
  def new
    @gossip = Gossip.new
  end
    
  def create
    
    @gossip = Gossip.new(
    'title' => params[:title],
    'content' => params[:content],
    'user_id' => User.all.sample.id
    )

    if @gossip.save
      redirect_to root_path
    else
     render 'new'
    end
  end

end