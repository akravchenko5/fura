class CargosController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_cargo, only: [:show, :edit, :update, :destroy]

  # GET /cargos
  def index
    @cargos = policy_scope(Cargo).order(created_at: :desc)
  end

  # GET /cargos/1
  def show
  end

  # GET /cargos/new
  def new
    @cargo = Cargo.new
    authorize @cargo
  end

  # GET /cargos/1/edit
  def edit
  end

  # POST /cargos
  def create
    @cargo = Cargo.new(cargo_params)
    @cargo.user = current_user
    authorize @cargo
    respond_to do |format|
      if @cargo.save
        format.html { redirect_to @cargo, notice: 'Cargo was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /cargos/1
  def update
    respond_to do |format|
      if @cargo.update(cargo_params)
        format.html { redirect_to @cargo, notice: 'Cargo was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /cargos/1
  def destroy
    @cargo.destroy
    respond_to do |format|
      format.html { redirect_to cargos_url, notice: 'Cargo was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cargo
      @cargo = Cargo.find(params[:id])
      authorize @cargo
    end

    # Only allow a list of trusted parameters through.
    def cargo_params
      params.require(:cargo).permit(:title, 
                                    :pick_up_address, 
                                    :drop_off_address, 
                                    :pick_up_datetime,
                                    :drop_off_datetime,
                                    :truck_type,
                                    :goods,
                                    :details,
                                    :weight,
                                    :volume,
                                    :status
                                    )
    end
end
