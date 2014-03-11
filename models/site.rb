class Site < Database
  @@sites = @@db['sites']

  def self.all
    @@sites.find()
  end
end