class RequestsController < ApplicationController
  before_action :set_request, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  # GET /requests
  # GET /requests.json
  def index
    #@requests = current_user.requests
    @requests = []
    current_user.requests.each do |request|
      @requests << request if request.table.status
    end

  end

  # GET /requests/1
  # GET /requests/1.json
  def show
   @drinks = Category.find_by(name:'Drinks').products
   @foods = Category.find_by(name:'Foods').products
   @products = Product.all
   if params[:search]
    @products = Product.search(params[:search]).order("created_at DESC")
  else
    @products = Product.all.order("created_at DESC")
  end
   @orders = @request.orders
   respond_to do |f|
    f.html
    f.json
    f.js
    end
 end

def checkout
  @requests = Request.all
  
end


 def kitchen
  @all = Request.all
  @requests = []
  @all.each do |request|
    @requests << request if request.table.status
  
  end
 end

  def close_table
    @request = Request.find(params[:request_id])
    @table = @request.table
    @table.status = false
    @table.save
    redirect_to requests_path,
    notice: 'El pedido se completó satifactoriamente.'

   
  end


  # GET /requests/new
  def new
    @request = Request.new
    @tables = Table.where(status: false)
  end

  # GET /requests/1/edit
  def edit
  end

  # POST /requests
  # POST /requests.json
  def create
    @table = Table.find(request_params[:table_id])
    @request = Request.new(request_params)
    @request.user = current_user
    @table.status = true

    respond_to do |format|
      if @request.save
        @table.save
        format.html { redirect_to @request, notice: 'Request was successfully created.' }
        format.json { render :show, status: :created, location: @request }
        format.js
      else
        format.html { render :new }
        format.json { render json: @request.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /requests/1
  # PATCH/PUT /requests/1.json
  def update
    respond_to do |format|
      if @request.update(request_params)
        format.html { redirect_to requests_path, notice: 'Request was successfully updated.' }
        format.json { render :show, status: :ok, location: @request }
        format.js
      else
        format.html { render :edit }
        format.json { render json: @request.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # DELETE /requests/1
  # DELETE /requests/1.json
  def destroy
    @table = Request.find(params[:id]).table
    @table.status = false
    @table.save if @request.destroy

    respond_to do |format|
      format.html { redirect_to requests_url, notice: 'Request was successfully destroyed.' }
      format.json { head :no_content }
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request
      @request = Request.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def request_params
      params.require(:request).permit(:comment, :table_id)
      
    end
  end
