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

  data.each do |attribute_category, attribute_hash|
    attribute_hash.each do |attribute, name_array|
      name_array.each do |name|
        if new_hash[name].nil?
          new_hash[name] = {}
          new_hash[name][:color] = []
        end
        if attribute_category == :color
          new_hash[name][attribute_category] << attribute
        else
          new_hash[name][attribute_category] = attribute.to_s
        end
      end
    end
  end

end
