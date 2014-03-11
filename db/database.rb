class Database
  configs_raw = IO.read('./db/config.json')
  configs = JSON.parse(configs_raw)
  config = configs[SINATRA_ENV]

  conn = Mongo::MongoClient.new(config['host'], config['port'])
  @@db = conn[config['database']]
end