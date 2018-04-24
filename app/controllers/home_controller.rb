class HomeController < ApplicationController

  def index
  # 	@response = HTTParty.get('http://api.alquran.cloud/surah/67/id.asad', format: :plan)
		# @data = JSON.parse(@response.body)
		# @ayahs = @data['data']['ayahs'].map{ |ayah,index| ayah['text'] }
  end
  
end
