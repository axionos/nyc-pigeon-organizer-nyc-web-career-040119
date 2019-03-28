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
  new_hash = {}

  data.each do |category, attribute_data_hash|
    attribute_data_hash.each do |attribute, name_array|
      name_array.each do |name|
          new_hash[name] = {
            :color => [],
            :gender => [],
            :lives => []
          }
      end
    end
  end
  binding.pry

  data[:color].each do |attribute, name_array|
    name_array.each do |name|
      if data[:color][attribute].include?(name)
        new_hash[name][:color] << attribute.to_s
      end
    end
  end
end
