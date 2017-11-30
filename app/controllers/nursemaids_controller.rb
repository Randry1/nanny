class NursemaidsController < ApplicationController

  before_action :set_nusermaid, only: [:show, :edit, :update, :destroy]

  def index
    @nursemaids = Nursemaid.all
  end

  def new
    @nursemaid = Nursemaid.new
  end

  def create
    @nursemaid = Nursemaid.new(nursemaid_params)

    respond_to do |format|
      if @nursemaid.save
        flash[:info] = 'Запись создана'
        format.html {redirect_to @nursemaid}
        format.json {render :show, status: :created, location: @nursemaid}
      else
        flash[:danger] = 'Данные не сохранены!'
        format.html  {render :new}
        format.json {render json: @nursemaid.errors, status: :unprocessable_entity}
      end
    end
  end

  def show
    # @nursemaid = Nursemaid.find(params[:id])
  end

  def edit
    # @nursemaid = Nursemaid.find(params[:id])
  end

  def update
    # @nursemaid = Nursemaid.find(params[:id])
    respond_to do |format|
      if @nursemaid.update_attributes(nursemaid_params)
        format.html {redirect_to @nursemaid, notice: 'Успешно изменено!'}
        format.json {render :show, status: :ok, location: @nursemaid}
      else
        flash[:danger] = 'Статься не обновлена'
        format.html {render :edit }
        format.json {render json: @nursemaid.errors, status: :unprocessable_entity}
      end
    end
  end

  def destroy
    # @nursemaid = Nursemaid.find(params[:id])
    @nursemaid.destroy
    flash[:info] = 'Профиль няни удален'
    redirect_to action: :index
  end

  private
  def nursemaid_params
    params.require(:nursemaid).permit(:name, :education, :experience, :medicine, :video, :description, :price, :image)
  end

  def set_nusermaid
    @nursemaid = Nursemaid.find(params[:id])
  end
end