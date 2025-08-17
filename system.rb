require 'dry/system'

class System < Dry::System::Container
  configure do |config|
    config.root = __dir__
    config.component_dirs.add 'lib'
  end
end
