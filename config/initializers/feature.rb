module Features
  def self.enabled?
    file = "#{Rails.root.to_s}/config/config.yml"
    if @features_ctime != File.ctime(file)
      @features_contents = YAML.load(File.open(file))
      @features_ctime = File.ctime(file)
    end
    @features_contents[Rails.env]
  end
end
