class Api::V1::SearchesController < ApplicationController
  def index
    @companies = Company.all
    render json: companies
  end

  def show
    @companie = companie.find(params[:id])
    render json: companie 
  end

  def new
  end

  def edit
  end

  def create
    company = Company.new(company_params)
    if company.save
      render json: company, status: :created
    else
      render json: { errors: company.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
  end

  def destroy
  end

  private

  def company_params
    params.require(:company).permit(:name, :address, :contact, :company_name, :listing_status)
  end
end
