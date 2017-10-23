class NetworkInterfacesController < ApplicationController
  before_action :set_device, only: %i[show edit update destroy]

  def index
    @network_interfaces = NetworkInterface.all
  end

  def show; end

  def new
    @network_interface = NetworkInterface.new
  end

  def edit; end

  def create
    @network_interface = NetworkInterface.new(network_interface_params)

    respond_to do |format|
      if @network_interface.save
        format.html { redirect_to @network_interface, notice: 'NetworkInterface was successfully created.' }
        format.json { render :show, status: :created, location: @network_interface }
      else
        format.html { render :new }
        format.json { render json: @network_interface.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @network_interface.update(network_interface_params)
        format.html { redirect_to @network_interface, notice: 'NetworkInterface was successfully updated.' }
        format.json { render :show, status: :ok, location: @network_interface }
      else
        format.html { render :edit }
        format.json { render json: @network_interface.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @network_interface.destroy
    respond_to do |format|
      format.html { redirect_to network_interfaces_url, notice: 'NetworkInterface was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_device
    @network_interface = NetworkInterface.find(params[:id])
  end

  def network_interface_params
    params.require(:network_interface).permit(:ip_address, :subnet_mask, :mac_address, :device_id, :sort_key)
  end
end
