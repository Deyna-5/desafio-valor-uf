class Api::UfValuesController < ActionController::API

       def date
              @client = Client.find_by(id: (params[:id]))
              if @client
                     @client.visited += 1
                     @client.save
              
              @uf_values =  UfValue.where(created_at: params[:date])
                     render json: @uf_values.to_json(only: [:value])
              end
       end

end