class CertificatesController < ApplicationController
  before_action :set_certificate, only: %i[ show edit update destroy ]

  def index
    @certificates = Certificate.all
  end

  def show
    render layout: false
  end

  def new
    @certificate = Certificate.new
  end

  def edit
  end

  def create
    @certificate = Certificate.new(certificate_params)

    if @certificate.save
      redirect_to @certificate, notice: "Certificate was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @certificate.update(certificate_params)
      redirect_to @certificate, notice: "Certificate was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @certificate.destroy!
    redirect_to certificates_url, notice: "Certificate was successfully destroyed.", status: :see_other
  end

  private

  def set_certificate
    @certificate = Certificate.find(params[:id])
  end

  def certificate_params
    params.require(:certificate).permit(:name, :diplom_kind, :diplom_mention, :diplom_path, :diplom_date, :first_name, :last_name, :birth_date, :birth_place, :ine, :year, :quality, :ects)
  end
end
