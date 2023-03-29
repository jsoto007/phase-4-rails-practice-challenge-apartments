class LeasesController < ApplicationController

  def index
    leases = Lease.all
    render json: leases
  end 

  def create 
    lease = Lease.create(lease_params)
    render json: lease, status: :created

  end 

  def destroy
    lease = Lease.find_by(id: params[:id])
    if lease
    lease.destroy
    render json: {}, status: :ok
    else 
      render json: { error: "Lease Not Found" }, status: :not_found
    end 
  end 

  private

  def lease_params
    params.permit(:id, :rent, :tenant_id, :apartment_id)
  end 

end
