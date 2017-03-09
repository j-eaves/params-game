class InputParametersController < ApplicationController
  #Ruby logic should always be here - none in the view page
  def parameter_input
    #/test_page (page)
    #p params[:name]
    @param_value = params[:name].upcase
    if @name[0]=='A'
      @message = "Hey your name starts with an A!"
    end
    render 'query_params_view.html.erb'
  end

  def query_name
    #/say_name (page)
    #Make a counter
    @counter = params[:count].to_i
    render 'name_of_query.html.erb'
  end

  def guess_number
    #Page needs to be made, yet
    @guess = params[:guess].to_i
    if @guess != 0 and @guess != "0" 
      if @guess.to_i>50
        @message = "You guessed too high."
      elsif @guess.to_i<50
        @message = "You guessed too low."
      else
        @message = "You got it!"
      end
    end  
    render 'guess_a_num.html.erb'
  end

  def url_segment_parameter_method
    @my_input = params[:this_is_a_variable]
    render 'url_seg_param_view.html.erb'
  end

  def guessing_game_form
    #/guess_the_number (page)
    #This online form prompts a user to guess a number
    render 'guessing_game_form.html.erb'
  end
  
  def guessing_game
    #/submit_guess and /guessing_game (pages)
    #this method takes in a number from a form and 
    #returns a response (/submit_guess page), based on whether 
    #the number matches a randomly generated number
    @message = "You guessed too " 
    #@guess is assigned the number entered in the input box
    @guess = params[:guessed_number].to_i
    @num = rand(0...100)+1
    if @guess != 0 and @guess != "0" 
      if @guess.to_i > @num
        @message += "high."
      elsif @guess.to_i < @num
        @message += "low."
      elsif @guess == @num
        @message = "You got it!"
      end
    else
      @message = "Type a number, not a word, or 0.."
    end  
    render 'guessing_game_submit_page.html.erb'
  end

  def form_params
    #/form (page)
    #my first and last names become the keys 
    #to the params from this form, which are
    #passed to the submit-button method
    #@form_1 = params[:first_name]
    #@form_2 = params[:last_name]
    render 'form_params.html.erb'
  end

  def submit_button
    #/submit_form (page)
    #Use the form input to render it on the submit page
    @form_1 = params[:first_name]
    @form_2 = params[:last_name]
    render 'form_submitted.html.erb'
  end

  #def form_goes_here
  #  render 'form_result.html.erb'
  #end
      
end
