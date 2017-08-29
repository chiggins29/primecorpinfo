module ApplicationHelper

	def alerts
    alert = flash[:alert]
    error = flash[:error]
    notice = flash[:notice]

    if alert
      js add_gritter(alert, title: "Prime Corporate Services", sticky: false, image: :warning, time: 2000)
    elsif error
      js add_gritter(error, title: "Prime Corporate Services", sticky: false, image: :error, time: 2000)
    else notice
      js add_gritter(notice, title: "Prime Corporate Services", sticky: false, image: :success, time: 2000)
    end
  end
  
end
