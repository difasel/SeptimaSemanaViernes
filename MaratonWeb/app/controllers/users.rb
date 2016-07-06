

get '/user' do
  # La siguiente linea hace render de la vista 
  # que esta en app/views/index.erb
  session.clear
  erb :index_user
  
end

get '/register_temp' do

  erb :register

end

get '/login_temp' do
  erb :login
end

get '/secret' do 
  erb :secret
end

get '/logout' do 
  session.clear
  @message = "No tienes login"
  erb :index
  end




post '/registro' do
  # La siguiente linea hace render de la vista 
  # que esta en app/views/index.erb
  @user_name = params[:Usuario]
  # p @user_name
  @user_mail = params[:Mail]
  # p @user_mail
  @user_pass = params[:Contraseña]
  # p @user_pass

  User.create(user_name: @user_name, mail: @user_mail, password: @user_pass)

  erb :index
end

post '/login' do

  @user_mail = params[:Mail]
  # p @user_mail
  @user_pass = params[:Contraseña]
  # p @user_pass
  val_user = User.authenticate(@user_mail, @user_pass)
  # p @val_user
  if val_user
    session[:password] = val_user.password
    session[:email] = val_user.mail
    session[:user_name] = val_user.user_name
    redirect to '/' 
  else
    session[:error_message] = "No son correctos tus datos"
    redirect to '/login_temp'
  end


end
