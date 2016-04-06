class RequestsController < ApplicationController
  before_action :set_request, only: [:show, :edit, :update, :destroy]
  $counter = 0
  $query = 0
  # GET /requests
  # GET /requests.json
  def index
    @requests = Request.all
  end

  # GET /requests/1
  # GET /requests/1.json
  def show
=begin
    @requests = Request.all
    #Algorithm for request allocation
    @requests.each do |r|
      if (r.qn == nil)
        remrequests = Request.all
        remrequests.delete(r)
        remrequests.each do |x|
              if (x.qn == nil)
                   #Combine values with same Sub Areas for any two values
                   #Match time i.e. +-0.5 hour 
                  if (r.p_sub_area==x.p_sub_area)
                        if($counter==3)
                           $query +=1
                           $counter =0 
                        end
                        r.qn = $query
                        x.qn = $query
                        $counter+=1
                        break
                  end
                  
                  #Combine values with same Areas after 7 days of a request
              end
        end
      end
    end
=end   
  end

  # GET /requests/new
  def new
    @request = Request.new
  end

  # GET /requests/1/edit
  def edit
  end

  # POST /requests
  # POST /requests.json
  def create
    @request = Request.new(request_params)
    
    respond_to do |format|
      if @request.save
        format.html { redirect_to @request, notice: 'Request was successfully created.' }
        format.json { render :show, status: :created, location: @request }
      else
        format.html { render :new }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end

  end

  # PATCH/PUT /requests/1
  # PATCH/PUT /requests/1.json
  def update
    respond_to do |format|
      if @request.update(request_params)
        format.html { redirect_to @request, notice: 'Request was successfully updated.' }
        format.json { render :show, status: :ok, location: @request }
      else
        format.html { render :edit }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /requests/1
  # DELETE /requests/1.json
  def destroy
    @request.destroy
    respond_to do |format|
      format.html { redirect_to requests_url, notice: 'Request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request
      @request = Request.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def request_params
      params.require(:request).permit(:requester_id, :p_area, :p_sub_area, :p_time, :d_area, :d_sub_area, :status, :r_time)
    end
end
