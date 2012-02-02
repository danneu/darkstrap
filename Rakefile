namespace :haml do
  desc "Watch the site's HAML templates and recompile them when they change"
  task :watch do
    require File.join(File.dirname(__FILE__), 'lib', 'haml_watcher')
    HamlWatcher.watch
  end
end
