class MultiplicationController < ApplicationController
  
  def multiplication
    render({ :template => "multiplication_templates/multiplication_form" })
  end

  def multiply

  
    @first_num = params.fetch("first_num").to_f
    @second_num = params.fetch("second_num").to_f

    @result =  @first_num * @second_num

    render({ :template => "multiplication_templates/multiplication_result" })
  end
end
