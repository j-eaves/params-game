class InputParametersController < ApplicationController
  #Ruby logic should always be here - none in the view page
  def parameter_input
    #p params[:name]
    @param_value = params[:name].upcase
    if @name[0]=='A'
      @message = "Hey your name starts with an A!"
    end
    render 'query_params_view.html.erb'
  end

  def query_name
    #Make a counter
    @counter = params[:count].to_i
    render 'name_of_query.html.erb'
  end

  def guess_number
    @guess = params[:guess].to_i
    if @guess != 0 and @guess != "0" 
      if @guess.to_i>50
        @message = "You guessed too high."
      elseif @guess.to_i<50
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

  def guessing_game
    @message = "You guessed too " 
    @guess = params[:guess].to_i
    if @guess != 0 and @guess != "0" 
      if @guess < 1
        @message = "Really?"
      elsif @guess.to_i>50
        @message = "You guessed too high."
      elseif @guess.to_i<50
        @message = "You guessed too low."
      else
        @message = "You got it!"
      end
    end  
    render 'guess_a_num.html.erb'
  end

  def form_params
    #my first and last names become the keys to the param from this
    #@form_1 = params[:first_name]
    #@form_2 = params[:last_name]
    render 'form_params.html.erb'
  end

  def submit_button
    #Use the form input to render it on the submit page
    @form_1 = params[:first_name]
    @form_2 = params[:last_name]
    render 'form_submitted.html.erb'
  end

  #def form_goes_here
  #  render 'form_result.html.erb'
  #end
      
end
