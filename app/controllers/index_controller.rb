class IndexController < ApplicationController
  def challenge1
  	@reverseString = params[:inputString].reverse! if params[:inputString] 
  end

  def challenge2
  	@parsedString = ""
  	if (params[:inputString])
  		inputArray = params[:inputString].split("")
	  	inputArray.each_with_index do |num, i|
	  		# Add original number to parsed
			  @parsedString += num

	  		if (inputArray[i+1])
	  			# If current num and next num are odd
	  			# Add a hyphen
	  			if (num.ord % 2 == 1 && inputArray[i+1].ord % 2 == 1)
			  		@parsedString += '-'
	  			end
	  		end
	  	end
	  end
  end

  def challenge3
  	@generatedText = ""
  	if (params[:inputString] && params[:inputString].length > 0)
	  	@wordbank = params[:inputString].split(" ")
	  	
	  	# Returns a random wordbank word
	  	def generate_word(wordbank)
	  		word = wordbank[Random.rand(wordbank.length)]
	  		return word
	  	end

	  	Random.rand(1000).times.map do
	  		@generatedText += generate_word(@wordbank)
	  		@generatedText += " "
	  	end
  	end
  end
end
