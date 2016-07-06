before '/jugar' do
  if session[:email]
    redirect to '/jugar_temp'
  else
    
    redirect to '/logout'
  end

end


get '/' do
  # La siguiente linea hace render de la vista 
  # que esta en app/views/index.erb
  erb :index
end


post '/jugar_temp' do

  @deck_val = Deck.all
  p @deck_val
  erb :jugar

end


post '/deck/:val_deck' do
  val = params[:val_deck]
  @valores_card =  Card.where(deck_id: val)

  erb :preguntas

end


post '/resultado/:val_deck' do

  val = params[:val_deck]
  valores_card =  Card.where(deck_id: val)
  @valores_deck =  Deck.find(val)
  @count = 0
  valores_card.each do |id_deck_val|
    answer = "answer_text_" + id_deck_val.id.to_s
    respuesta = params[answer.to_s] 

    if  respuesta == id_deck_val.answer
      @count += 1
      message_question = "Respuesta Correcta"
    else
      message_question = "Respuesta Incorrecta"
    end
  end

   @user = User.find_by(user_name: session[:user_name])
   p @user
   round1 = Round.create(deck_name: @valores_deck.name_deck, correct_answers: @count)
   @user.rounds << round1

   

  erb :resultado
end


get '/salir' do

  erb :index

end