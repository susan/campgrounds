class ApplicationController < ActionController::API


  def encode_token(payload)
  	JWT.encode(payload, ENV["SECRET"])
  end

  def auth_header
   request.headers['Authorization']
  end

  def decoded_token
  	token= auth_header
  	puts JWT.decode(token, ENV["SECRET"])[0]
    JWT.decode(token, ENV["SECRET"])[0]
  end



  def current_useaaaa
  	if decoded_token
     user_id = decoded_token['user_id']
      @user = User.find_by(id: user_id)
    end
  end

  def logged_in?
    !!current_useaaaa
  end

end
