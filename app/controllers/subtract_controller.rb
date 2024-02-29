class SubtractController < ApplicationController

  def show_sub_form
    render({ :template => "subtraction_templates/subtraction_form" })
  end

  def subtract_these
    @first_num = params.fetch("first_num").to_f
    @second_num= params.fetch("second_num").to_f

    @result =  @second_num - @first_num

    render({ :template => "subtraction_templates/subtraction_results" })
  end
  
end
