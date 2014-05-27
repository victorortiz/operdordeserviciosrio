class ArticulosController < ApplicationController
  # GET /articulos
  # GET /articulos.json
  before_filter :require_user, only: [:new, :show]

  def index
    @articulos = Articulo.all
    @busqueda = Articulo.search(params[:search])
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml { render xml: @articulos }# index.html.erb
      format.json { render json: @articulos }
    end
  end

  # GET /articulos/1
  # GET /articulos/1.json
  def show
    @articulo = Articulo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml { render xml: @articulo }
      format.json { render json: @articulo }
    end
  end

  # GET /articulos/new
  # GET /articulos/new.json
  def new
    @articulo = Articulo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @articulo }
    end
  end

  # GET /articulos/1/edit
  def edit
    @articulo = Articulo.find(params[:id])
  end

  # POST /articulos
  # POST /articulos.json
  def create
    @articulo = Articulo.new(params[:articulo])

    respond_to do |format|
      if @articulo.save
        format.html { redirect_to @articulo, notice: 'Articulo was successfully created.' }
        format.json { render json: @articulo, status: :created, location: @articulo }
      else
        format.html { render action: "new" }
        format.json { render json: @articulo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /articulos/1
  # PUT /articulos/1.json
  def update
    @articulo = Articulo.find(params[:id])

    respond_to do |format|
      if @articulo.update_attributes(params[:articulo])
        format.html { redirect_to @articulo, notice: 'Articulo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @articulo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articulos/1
  # DELETE /articulos/1.json
  def destroy
    @articulo = Articulo.find(params[:id])
    @articulo.destroy

    respond_to do |format|
      format.html { redirect_to articulos_url }
      format.json { head :no_content }
    end
  end
  
  def busqueda
    @busqueda = Articulo.search(params[:search])
    
    redirect_to articulos_path
    
  end
end
