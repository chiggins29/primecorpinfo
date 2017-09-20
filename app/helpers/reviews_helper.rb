module ReviewsHelper

  def render_stars(value)
    output = ''
    if 
    	(1..5).include?(value.floor)
      value.floor.times { output += image_tag('star.png')}
    end
    if
    	value == (value.floor + 0.5) && value.to_i != 5
      output += image_tag('half-star.png')
    end
    output.html_safe
  end


  def customer_star_rating(rate)
    outputs = ''
    if
      (1..5).include?(rate.floor)
      rate.floor.times { outputs += image_tag('star.png')}
    end
    outputs.html_safe
  end
end