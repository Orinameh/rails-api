module Response
    def json_response(object, status = :ok)
      render json: object, status: status
    end
end

# Add to application_controller.rb