class IndexController < ApplicationController
  def challenge1
  	@reverseString = params[:inputString].reverse! if params[:inputString] 
  end

  def challenge2
  end

  def challenge3
  end
end
