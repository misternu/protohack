require 'yaml'

CONFIG_FILE_NAME = '.protohack_config.yml'
if File.exists?(CONFIG_FILE_NAME)
  config = YAML.load_file(File.join(File.path(__dir__), CONFIG_FILE_NAME))
else
  config = {}
end

desc "run script defined in config"
task :default do
  sh "ruby src/server_#{config['day']}.rb"
end
