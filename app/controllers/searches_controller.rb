class SearchesController < ApplicationController

  def new
    zip = params[:searched_zip]
    if zip =~ /\d{5}/
      @area = Area.find_by_zip(zip)
      if @area
        redirect_to @area
      else
        flash[:alert] = "Zu dieser Postleitzahl haben wir noch keinen Eintrag"
        redirect_to root_path
      end
    else
      flash[:alert] = "Bitte geben Sie eine 5stellige Postleitzahl ein"
      redirect_to root_path
    end
  end

end
