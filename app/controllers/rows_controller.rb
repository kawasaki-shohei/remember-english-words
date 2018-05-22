class RowsController < ApplicationController
  before_action :set_row, only: [:show, :edit, :update, :destroy]

  # GET /rows
  # GET /rows.json
  def index
    @page = Page.find(params[:page_id])
    @rows = @page.rows
  end

  # GET /rows/1
  # GET /rows/1.json
  def show
  end

  # GET /rows/new
  def new
    @page = Page.find(params[:page_id])
    @row = @page.rows.new
  end

  # GET /rows/1/edit
  def edit
    @page = Page.find(params[:page_id])
  end

  # POST /rows
  # POST /rows.json
  def create
    @page = Page.find(params[:row][:page_id])
    @row = Row.new(row_params)

    respond_to do |format|
      if @row.save
        format.html { redirect_to page_rows_path(@page), notice: 'Row was successfully created.' }
        format.json { render :show, status: :created, location: @row }
      else
        format.html { render :new }
        format.json { render json: @row.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rows/1
  # PATCH/PUT /rows/1.json
  def update
    respond_to do |format|
      if @row.update(row_params)
        format.html { redirect_to @row, notice: 'Row was successfully updated.' }
        format.json { render :show, status: :ok, location: @row }
      else
        format.html { render :edit }
        format.json { render json: @row.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rows/1
  # DELETE /rows/1.json
  def destroy
    @page = Page.find(params[:page_id])
    @row = Row.find(params[:id])
    @row.destroy
    respond_to do |format|
      format.html { redirect_to page_rows_path(@page), notice: 'Row was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_row
       @row = Row.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def row_params
      params.require(:row).permit(:word, :jpn, :sentense, :page_id)
    end
end
