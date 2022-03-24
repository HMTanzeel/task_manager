class ClientsController < ApplicationController
  before_action :find_client, except: [:index, :new, :create]

  def index
    @clients = Client.all
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.create(client_params)
    if @client.save
      redirect_to client_path(@client), notice: 'Client has successfully created.'
    else
      redirect_to new_client_path, alert: @client.errors.full_messages.to_sentence
    end
  end

  def show; end

  def edit; end

  def update
    if @client.update(client_params)
      redirect_to client_path(@client)
    else
      redirect_to edit_client_path, alert: @client.errors.full_messages.to_sentence
    end
  end

  def destroy
    if @client.destroy
      redirect_to clients_path, notice: 'Client has been deleted succesfully.'
    else
      redirect_to clients_path, alert: @client.errors.full_messages
    end
  end

  private
    def client_params
      params.require(:client).permit(:first_name, :last_name, :website, :source, :email, :location)
    end

    def find_client
      @client = Client.find(params[:id])
    end
end
