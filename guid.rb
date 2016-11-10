#guid randomizer class so we don't need to go to the db to get a new guid all the time
class Guid
	@@guid = "00000000-0000-0000-0000-000000000000"
	@@alphabet = "aAbBcCdDeEfF1234567890"

	def self.new
		guidArray = @@guid.scan(/./)
		guidArray.collect! {|char|
			(char != "-") ?	@@alphabet[Random.rand(22)] : char
		}

		newGuid = guidArray.join("")
		return newGuid
	end
end