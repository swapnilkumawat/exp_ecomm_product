class ApplicationController < ActionController::API

  def restrict_access
    app_config = YAML.load_file("#{Rails.root}/config/app_config.yml")
    if request.headers['X-Ecom-Client'] != app_config['client_id']
      render json: { error: 'Unauthorized'}, status: 401 and return
    end
  end

end
