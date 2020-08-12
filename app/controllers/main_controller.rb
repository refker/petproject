class MainController < ApplicationController
  def root

  end

  def update
    redirect_to action: 'iframe', url: params[:url], company_id:  params[:company_id]
  end

  def iframe
    @company_id = params[:company_id]
    @uri = URI.parse(params[:url])
    @js = "http://#{@uri.hostname}/reseller.js"
  end
end
