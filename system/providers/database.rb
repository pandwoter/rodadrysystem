System.register_provider(:database) do
  prepare do
    require 'sequel'
  end

  start do
    conn = Sequel.connect('postgres://postgres:postgres@localhost:5432/shop', max_connections: 10)
    register(:database, conn)
  end
end

