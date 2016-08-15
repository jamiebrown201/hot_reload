def feature_switch(bool)
  data = YAML.load_file "#{Rails.root.to_s}/config/config.yml"
  data[Rails.env]["feature"] = bool
  File.open("#{Rails.root.to_s}/config/config.yml", 'w') { |f| YAML.dump(data, f) }
end
