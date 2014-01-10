class SearchesController < ApplicationController

  def new
    zip = params[:searched_zip]
    # See http://stackoverflow.com/questions/6714047/using-regex-to-find-an-exact-pattern-match-in-ruby
    if zip =~ /^\d{5}+$/
      zip_code = ZipCode.find_by_zip(zip)
      if zip_code
        @area = Area.find(zip_code.area_id)
        if @area
          redirect_to @area
        else
          redirect_to root_path, error: "Zu dieser Postleitzahl haben wir noch keinen Eintrag"
        end
      else
        flash[:alert] = "Leider ist diese Postleitzahl noch nicht in unserer Datenbank"
        redirect_to root_path
      end
    else
      flash[:alert] = "Bitte geben Sie eine 5stellige Postleitzahl ein"
      redirect_to root_path
    end
  end

end
