class ChatformsController < ApplicationController
  before_action :set_chatform, only: [:show, :edit, :update, :destroy]

  # GET /chatforms
  # GET /chatforms.json
  def index
    @chatform = Chatform.new
    @chatforms = Chatform.all
  end

  # GET /chatforms/1
  # GET /chatforms/1.json
  def show
  end

  # GET /chatforms/new
  def new
    @chatform = Chatform.new
  end

  # GET /chatforms/1/edit
  def edit
  end

  # POST /chatforms
  # POST /chatforms.json
  def create
    @chatform = Chatform.new(chatform_params)

    respond_to do |format|
      if @chatform.save
        format.html { redirect_to chatforms_path, notice: 'Chatform was successfully created.' }
        format.json { render action: 'show', status: :created, location: chatforms_path }
      else
        format.html { render action: 'new' }
        format.json { render json: @chatform.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chatforms/1
  # PATCH/PUT /chatforms/1.json
  def update
    respond_to do |format|
      if @chatform.update(chatform_params)
        format.html { redirect_to @chatform, notice: 'Chatform was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @chatform.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chatforms/1
  # DELETE /chatforms/1.json
  def destroy
    @chatform.destroy
    respond_to do |format|
      format.html { redirect_to chatforms_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chatform
      @chatform = Chatform.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chatform_params
      params.require(:chatform).permit(:content)
    end
end
