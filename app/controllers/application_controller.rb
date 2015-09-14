class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  private

  def flash_to_headers
    return unless request.xhr?

    msg = flash_message

    response.headers['X-Message'] = msg.encode('iso-8859-1')
    response.headers['X-Message-Type'] = flash_type.to_s

    flash.discard
  end

  def flash_message
    [:error, :warning, :notice].each do |type|
      return flash[type] unless flash[type].blank?
    end

    ''
  end

  def flash_type
    [:error, :warning, :notice].each do |type|
      return type unless flash[type].blank?
    end

    :empty
  end

end
