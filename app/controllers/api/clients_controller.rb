class Api::ClientsController < ActionController::API

       def clients
              @client = Client.find_by(name: params[:name])
                     render json: @client.to_json(only: [:name, :visited])
       end

end