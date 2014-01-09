#encoding: utf-8

class ProspectsController < ApplicationController
  def create
    @prospect = Prospect.new(email: params[:email], zip: params[:zip])
    if @prospect.save
      flash[:notice] = "Besten Dank, wir melden uns sobald wir in Ihrer Gegend
      tätig sind."
      redirect_to root_path
    else
      flash[:alert] = "Es gab einen Fehler, bitte laden Sie die Seite erneut
      und versuchen Sie es noch mal"
      render 'new'
    end
  end
end
