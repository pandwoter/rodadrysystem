class RodaAdapter < Struct.new(:logger)
  def <<(m)
    logger.info(m)
  end

  def info(m)
    logger.info(m)
  end

  def debug(m)
    logger.info(m)
  end
end

System.register_provider(:logger) do
  prepare do
    require 'semantic_logger'
  end

  start do
    SemanticLogger.default_level = :trace
    SemanticLogger.add_appender(file_name: 'development.log', formatter: :color)
    # TODO: wrap using adapter inside app.rb, keep without wrapping here...
    System.register(:logger, RodaAdapter.new(SemanticLogger))
  end
end

