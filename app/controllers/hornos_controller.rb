class HornosController < ApplicationController
  before_filter :find_horno, :only => [:show, :edit, :update, :destroy, :nuevas_mediciones, :crear_mediciones]

  def index
    @hornos = Horno.all
  end

  def show
  end

  def new
    @horno = Horno.new
  end

  def create
    @horno = Horno.new(params[:horno])
    if @horno.save
      redirect_to @horno, :notice => "Successfully created horno."
    else
      render :action => 'new'
    end
  end

  def nuevas_mediciones
    if @horno.mediciones.where(:fecha => Date.today.to_datetime).empty?
        @horno.quemadores.each do |quemador|
          #quemador.mediciones << Medicion.new(:fecha => Date.today, :presion => 10)
          quemador.mediciones.create(
            :fecha => Date.today,
            :presion => 10, :temperatura => 20
        )
      end
    end
  end

  def crear_mediciones
  end

  def edit
  end

  def update
    if @horno.update_attributes(params[:horno])
      redirect_to @horno, :notice  => "Successfully updated horno."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @horno.destroy
    redirect_to hornos_url, :notice => "Successfully destroyed horno."
  end

  private
    def find_horno
      @horno = Horno.find(params[:id])
    end

end
