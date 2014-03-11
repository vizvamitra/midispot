class Article < Database
  @@articles = @@db['articles']

  def self.all
    @@articles.find().sort(date: 1)
  end
end