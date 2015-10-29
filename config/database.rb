Sequel.extension :pg_array, :pg_json, :pg_json_ops, :pg_inet
Sequel::Model.plugin(:schema)
Sequel::Model.raise_on_save_failure = false # Do not throw exceptions on failure
Sequel::Model.db = case Padrino.env
  when :development then Sequel.connect("postgres://postgres:j@honeybadger-transact/honeybadger_development", :loggers => [logger])
  when :production  then Sequel.connect("postgres://postgres:j@honeybadger-transact/honeybadger_production",  :loggers => [logger])
  when :test        then Sequel.connect("postgres://postgres:j@honeybadger-transact/honeybadger_test",        :loggers => [logger])
end
Sequel::Model.db.extension(:pagination)
