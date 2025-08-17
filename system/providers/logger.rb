System.register_provider(:logger) do
  prepare do
    require 'semantic_logger'
  end

  start do
    SemanticLogger.default_level = :trace
    SemanticLogger.add_appender(file_name: 'development.log', formatter: :color)
    SemanticLogger.add_appender(io: STDOUT, formatter: :color, level: :debug)
    System.register(:logger, SemanticLogger['app'])
  end
end
