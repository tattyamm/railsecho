class StatusController < ApplicationController

    def show
        hash = {'test' => 'hello'}
        render :json => hash, :status => params[:id].to_i
    end

end
