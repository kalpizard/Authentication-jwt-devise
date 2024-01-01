# # frozen_string_literal: true

# class Users::SessionsController < Devise::SessionsController
#   # before_action :configure_sign_in_params, only: [:create]

#   # GET /resource/sign_in
#   # def new
#   #   super
#   # end

#   # POST /resource/sign_in
#   # def create
#   #   super
#   # end

#   # DELETE /resource/sign_out
#   # def destroy
#   #   super
#   # end

#   # protected

#   # If you have extra params to permit, append them to the sanitizer.
#   # def configure_sign_in_params
#   #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
#   # end
#   private

#   def respond_with(resource, _opts = {})
#     render json: {
#       status: {
#         code: 200, 
#         message: 'Logged in successfully'
#       }, 
#       data: UserSerializer.new(resource).serializable_hash[:data][:attributes]
#     }
#   end

#   def respond_to_on_destroy
#     if current_user
#       render json: {
#         status: 200,
#         message: "logged out successfully"
#       }, status: :ok
#     else
#       render json: {
#         status: 401,
#         message: "Couldn't find an active session."
#       }, status: :unauthorized
#     end
#   end
# end


####################################3 funciona 
# frozen_string_literal: true

# class Users::SessionsController < Devise::SessionsController
#   include RackSessionFix
#   respond_to :json
#   # before_action :configure_sign_in_params, only: [:create]

#   # GET /resource/sign_in
#   # def new
#   #   super
#   # end

#   # POST /resource/sign_in
#   # def create
#   #   super
#   # end

#   # DELETE /resource/sign_out
#   # def destroy
#   #   super
#   # end

#   # protected

#   # If you have extra params to permit, append them to the sanitizer.
#   # def configure_sign_in_params
#   #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
#   # end
#   private

# #   def respond_with(resource, _opts = {})
# #     render json: {
# #       status: {
# #         code: 200, 
# #         message: 'Logged in successfully'
# #       }, 
# #       data: UserSerializer.new(resource).serializable_hash[:data][:attributes]
# #     }
# #   end

# #   def respond_to_on_destroy
# #     if current_user
# #       render json: {
# #         status: 200,
# #         message: "logged out successfully"
# #       }, status: :ok
# #     else
# #       render json: {
# #         status: 401,
# #         message: "Couldn't find an active session."
# #       }, status: :unauthorized
# #     end
# #   end
# # end



# # def respond_with(resource, _opts = {})
# #   render json: {
# #     status: {
# #       code: 200, 
# #       message: 'Logged in successfully'
# #     }, 
# #     data: {
# #       user: UserSerializer.new(resource).serializable_hash[:data][:attributes],
# #       token: request.env['warden-jwt_auth.token']
# #     }
# #   }
# # end
# # end

# def respond_with(resource, _opts = {})
#   render json: {
#     status: {
#       code: 200, 
#       message: 'Logged in successfully'
#     }, 
#     data: {
#       user: UserSerializer.new(resource).serializable_hash[:data][:attributes],
#       token: request.env['warden-jwt_auth.token']
#     }
#   }
# end
# end





# app/controllers/users/sessions_controller.rb

class Users::SessionsController < Devise::SessionsController
  include RackSessionFix
  respond_to :json
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end

  private

  def respond_with(resource, _opts = {})
    render json: {
      status: {
        code: 200, 
        message: 'Logged in successfully'
      }, 
      data: {
        user: UserSerializer.new(resource).serializable_hash[:data][:attributes],
        token: request.env['warden-jwt_auth.token']
      }
    }
  end

  def respond_to_on_destroy
    if current_user
      render json: {
        status: 200,
        message: "Logged out successfully"
      }, status: :ok
    else
      render json: {
        status: 401,
        message: "Couldn't find an active session."
      }, status: :unauthorized
    end
  end
end
