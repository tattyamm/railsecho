class EchoController < ActionController::Base

  def show
  	req = params[:p]
  	p req

	begin
		hash = JSON.parse(req)
	rescue JSON::ParserError => e
		hash = {'err' => 'test'}
	end
	p hash

    render :json => hash, :status => params[:s]
  end

end
