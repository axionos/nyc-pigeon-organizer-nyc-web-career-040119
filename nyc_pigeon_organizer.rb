require "pry"
def nyc_pigeon_organizer(data)
  # new_hash = {}
  # data.each do |key, value|
  #   value.each do |att, array|
  #     array.each do |name|
  #       if !new_hash.has_key?(name)
  #         new_hash[name] = {}
  #       end
  #
  #       if !new_hash[name].has_key?(key)
  #         new_hash[name][key] = []
  #       end
  #
  #       if !new_hash[name][key].include?(att)
  #         new_hash[name][key] << att.to_s
  #
  #       end
  #     end
  #   end
  # end
  # new_hash
  pigeons2 = {}

#This is heavily borrowed from Blake's lecture & notes, but refactored a bit.
data.each do |key, hash|
  # <:color => {:purple => ["Theo", "Peter Jr.", "Lucky"],etc}>
  hash.each do |attribute, name_array|
    # <:purple => ["Theo", "Peter Jr.", "Lucky"]>
    # <"Subway" => ["Theo", "Queenie"]>
    name_array.each do |name|
      # <["Theo", "Peter Jr.", "Lucky"]>
      if pigeons2[name].nil?
        pigeons2[name] = {}
        pigeons2[name][:color] = []
      end
      if key == :color
        #for each name in pigeons, if key = :color, shovel the attribute (purple, grey, etc) into the pigeons2 color array
        pigeons2[name][key] << attribute
      else
        #otherwise assign the key(:lives or :gender) to pigeons2 hash and set it equal to the value of that attribute
        #convert attributes to string!!!!! yayyyyyyyyy!
        pigeons2[name][key] = attribute.to_s
      end
    end
  end
end
pigeons2
end
