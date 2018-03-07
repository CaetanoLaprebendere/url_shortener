class UrlsController < ApplicationController

    def index
      @urls = Url.all
      render template: "urls/index"
    end

    def create
      @urls = Url.new(strong_params)
      if @urls.save
        redirect_to urls_path
      else
        flash[:errors] = "Please enter a valid url"
        render template: "urls/new"
      end 
    end

    private
    def strong_params
      params.require(:url).permit(:long_url)
    end

end  