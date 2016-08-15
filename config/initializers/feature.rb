module YourFileReader
  def self.load
    YAML.load_file("#{Rails.root.to_s}/config/feature/config.yml")[Rails.env]
  end
end
