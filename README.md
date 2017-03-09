# README

This README documents steps necessary to get the
application up and running.

Files that I made within this rails app:
app >
  controllers >
    input_parameters_controller.db
      * where my functions are which render my html.erb pages
  views >
    input_parameters >
      * form_params.html.erb
          the page with my form parameters
      * form_submitted.html.erb
          the page that appearsafter hitting the submit button
      * guess_a_num.html.erb
          an interactive page where you play a number guessing game
      * name_of_query.html.erb
          an interactive page where you play a number guessing game
      * query_params_view.html.erb
          this page counts page visits
      * url_seg_param_view.html.erb
          prints to the page what was written after the backslash in the url window
config >
  * routes.rb
      this_app/page_name calls the file input_parameters.rb to get whatever_method_name to run

      get '/test_page'=>'input_parameters#parameter_input'
      get '/say_name'=>'input_parameters#query_name'
      get '/guess_number'=>'input_parameters#guessing_game'
      get '/form'=> 'input_parameters#form_params'
      #Colon syntax is ONLY allowed in the routes file
      get '/url_segment_parameter/:this_is_a_variable'=>'input_parameters#url_segment_parameter_method'
      post'/submit_form'=>'input_parameters#submit_button'

Other things to eventually cover:

* Ruby version: ruby 2.4.0p0 (2016-12-24 revision 57164) [x86_64-darwin15]

* System dependencies: Stay tuned...

* Configuration: Stay tuned...

* Database creation: Stay tuned...

* Database initialization: Stay tuned...

* How to run the test suite: Stay tuned...

* Services (job queues, cache servers, search engines, etc.): Stay tuned...

* Deployment instructions: Stay tuned...

* ...

