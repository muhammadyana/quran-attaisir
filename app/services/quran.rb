class Quran
	class << self

		def get_surah(surah)
			@response = HTTParty.get("http://api.alquran.cloud/surah/#{surah}/id.asad", format: :plan)
			@data = JSON.parse(@response.body)
			@ayahs = @data['data']['ayahs'].map do |ayah| 
				ayah['text'] 
			end
		end

		def get_random_ayah_with_number(surah)
			@response = HTTParty.get("http://api.alquran.cloud/surah/#{surah}/id.asad", format: :plan)
			@data = JSON.parse(@response.body)
			@ayahs = @data['data']['ayahs'].map do |ayah|
				{ayah: ayah['text'], numberInSurah: ayah['numberInSurah']} 
			end
			@ayahs.insert(0, {name_of_surah: @data['data']['name']})
		end

		def get_random_number_ayah(total_ayah)
			@random_ayat = Array.new(total_ayah){ |index| index ++ 1 }
		end

	end
end