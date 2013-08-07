class ChatformsController < ApplicationController

  # GET /chatforms
  # GET /chatforms.json
  def index
    @chatform = Chatform.new
    @chatforms = Chatform.all
  end

 # POST /chatforms
  # POST /chatforms.json
  def create
    @chatform = Chatform.create(chatform_params)
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def chatform_params
      params.require(:chatform).permit(:content)
    end
end
