class ApplicationController < ActionController::API
  include Response
  include ExceptionHandler
  attr_reader :current_user

  def get_list(model, params)
    @model = model.all.limit(params[:limit]).offset(params[:offset])
    json_response(@model)
  end

  # Create
  def create_data(model, params)
    @model = model.create!(params)
    json_response(@model, :created)
  end

  # Read
  def get_data(model)
    json_response(model)
  end

  # Update
  def update_data(model, params)
    model.update(params)
    head :no_content
  end

  # Delete
  def delete_data(model)
    model.destroy
    head :no_content
  end

  private

  def authenticate_request
    @current_user = AuthorizeApiRequest.call(request.headers).result
    render json: { error: 'Not Authorized' }, status: 401 unless @current_user
  end
end
