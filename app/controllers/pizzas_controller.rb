class PizzasController < ApplicationController
  before_action :set_pizza, only: %i[ show edit update destroy ]

  # GET /pizzas or /pizzas.json
  def index
    @pizzas = Pizza.all
  end

  # GET /pizzas/1 or /pizzas/1.json
  def show
  end

  # GET /pizzas/new
  def new
    @pizza = Pizza.new
  end

  # GET /pizzas/1/edit
  def edit
  end

  # POST /pizzas or /pizzas.json
  def create

    @pizza = Pizza.new(pizza_params)

    respond_to do |format|
      if @pizza.save
        format.html { redirect_to pizzas_url(@pizza), notice: "The pizza was successfully created." }
        format.json { render :show, status: :created, location: @pizza }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pizza.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pizzas/1 or /pizzas/1.json
  def update

    respond_to do |format|
      if @pizza.update(pizza_params)
        format.html { redirect_to pizzas_url, notice: "The pizza was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pizza.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pizzas/1 or /pizzas/1.json
  def destroy
    @pizza.destroy

    respond_to do |format|
      format.html { redirect_to pizzas_url, notice: "The pizza was successfully deleted." }
      format.json { head :no_content }
    end
  end

  private

    def set_pizza
      @pizza = Pizza.find(params[:id])
    end

    def pizza_params
      params.require(:pizza).permit(:name, :id, topping_ids: [] )
    end
end