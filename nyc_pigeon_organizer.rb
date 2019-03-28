def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |key, value|
    value.each do |att, array|
      array.each do |name|
        if !new_hash.has_key?(name)
          new_hash[name] = {}
        end

        if !new_hash[name].has_key?(key)
          new_hash[name][key] = []
        end


      end
    end
  end
  new_hash
end
