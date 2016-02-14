class InfoController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  def show
    #render text: "show!"
    @method = request.request_method
    @header = request.env.select { |k, v| k.start_with?('HTTP_', 'X_')}

    # 不要そう
    if request.get?
      p "get !"
    elsif request.post?
      p "post !"
    else
      p "other !"
    end

    render 'info/show'
  end


end
