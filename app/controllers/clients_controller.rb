class ClientsController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  def show
    client = Client.find(params[:id])
    render json: client
  end

  def total_charge
    client = Client.find(params[:id])
    render json: client.total_charge
  end

  private
  def render_not_found_response
    render json: {error: "Client not found"}, status: :not_found
  end
end
