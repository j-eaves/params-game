Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/test_page'=>'input_parameters#parameter_input'
  get '/say_name'=>'input_parameters#query_name'
  get '/guess_number'=>'input_parameters#guessing_game'
  get '/form'=> 'input_parameters#form_params'
  #Colon syntax is ONLY allowed in the routes file
  get '/url_segment_parameter/:this_is_a_variable'=>'input_parameters#url_segment_parameter_method'
  post'/submit_form'=>'input_parameters#submit_button'
end
