module ApplicationHelper

	def get_random_surah
		@response = HTTParty.get('http://api.alquran.cloud/surah/67/id.asad', format: :plan)
		@data = JSON.parse(@response.body)
		@ayahs = @data['data']['ayahs'].map{ |ayah,index| ayah['text'] }
	end

	def random_ayah_with_number
		@response = HTTParty.get('http://api.alquran.cloud/surah/67/id.asad', format: :plan)
		@data = JSON.parse(@response.body)
		@ayahs = @data['data']['ayahs'].map{ |ayah,index| { ayah: ayah['text'], numberInSurah: ayah['numberInSurah']}}
	end

	def get_random_ayah
		@random_ayat = Array.new(16){ |index| index ++ 1 }
		@random_ayat.sample
	end
end
