class Hamming
	def self.compute(string_1, string_2)
		raise ArgumentError if string_1.length != string_2.length

		(0...string_1.length).count { |i| string_1[i] != string_2[i] }
	end
end
