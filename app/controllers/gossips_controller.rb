class GossipsController < ApplicationController
  
  def index
    @gossips = Gossip.all
  end

  def edit
    @gossip = Gossip.find(params[:id])
    @id = @gossip.user.id
  end
  
  def update
    @gossip = Gossip.find(params[:id])
    post_params = params.require(:gossip).permit(:title, :content)
    @gossip.update(post_params)
    redirect_to root_path
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @id = @gossip.user.id
    @gossip.destroy
    redirect_to gossip_path
  end
  
  def new
    @gossip = Gossip.new
  end
    
  def show
    @gossip = Gossip.find[params[:id]]
    @id = @gossip.user.id
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