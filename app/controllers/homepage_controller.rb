class HomepageController < ApplicationController
  def index
    
    @quotes = QUOTES.map do |q|
      quote, author = q.split("--")
      { quote: quote.strip, author: author.strip }
    end
    
    @left_quotes, @right_quotes = @quotes.each_slice(QUOTES.size / 2).to_a
  end

  def email_submit
    if params['email_address']
      Email.create(:email => params[:email_address], :ip_address => request.remote_ip)
    end

    respond_to do |format|
      format.js
    end
  end
end
