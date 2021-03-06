class ChatformsController < ApplicationController

  # GET /chatforms
  # GET /chatforms.json
  def new
    @chatform = Chatform.new
    PrivatePub.publish_to("/chatforms/new", chatform: @chatform)
  end
  
  def index
    @chatform = Chatform.new
    @chatforms = Chatform.all
  end

 # POST /chatforms
  # POST /chatforms.json
  def create
    @chatform = Chatform.new(chatform_params)
    @chatform.name = current_user.name
    @chatform.save
    PrivatePub.publish_to("/chatforms", chatform: @chatform)
  end

 def show
   @chatform = Chatform.find(params[:id])
   @chatforms = Chatform.all
 end
 
  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def chatform_params
      params.require(:chatform).permit(:content, :name)
    end
end
