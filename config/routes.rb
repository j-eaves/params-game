Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #/test_page is the web page; input_parameters refers to input_parameters_controller.rb;
  #parameter_input refers to the method in input_parameters_controller.rb, which renders /test_page
  get '/test_page'=>'input_parameters#parameter_input'
  get '/say_name'=>'input_parameters#query_name'
  #the number guessing game form page
  get '/guess_the_number'=> 'input_parameters#guessing_game_form'
  #the number guessing submittal page
  get '/submit_guess'=>'input_parameters#guessing_game'
  #the results page that shows after submittal (redundant?)
  post'/guessing_game'=>'input_parameters#guessing_game'

  #form prototype page - takes you to the form_params method in the input_parameters_controller.rb file, which renders the /form page (form_params.html.erb)
  get '/form'=> 'input_parameters#form_params'

  #Colon syntax is ONLY allowed in the routes file
  
  get '/url_segment_parameter/:this_is_a_variable'=>'input_parameters#url_segment_parameter_method'
  post'/submit_form'=>'input_parameters#submit_button'  
end
