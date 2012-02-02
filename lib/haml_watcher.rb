require 'rubygems'
require 'fssm'
require 'haml'

class HamlWatcher
  class << self
    def watch
      refresh
      puts ">>> HamlWatcher is watching for changes. Press Ctrl-C to Stop."
      FSSM.monitor('haml', '**/*.haml') do
        update do |base, relative|
          puts ">>> Change detected to: #{relative}"
          HamlWatcher.compile(relative)
        end
        create do |base, relative|
          puts ">>> File created: #{relative}"
          HamlWatcher.compile(relative)
        end
        delete do |base, relative|
          puts ">>> File deleted: #{relative}"
          HamlWatcher.remove(relative)
        end
      end
    end

    def output_file(filename)
      # './haml' retains the base directory structure
      filename.gsub(/\.html\.haml$/,'.html')
    end

    def remove(file)
      output = output_file(file)
      File.delete output
      puts "\033[0;31m   remove\033[0m #{output}"
    end

    def compile(file)
      output_file_name = output_file(file)
      origin = File.open(File.join('haml', file)).read
      result = Haml::Engine.new(origin).render
      raise "Nothing rendered!" if result.empty?
      # Write rendered HTML to file
      color, action = File.exist?(output_file_name) ? [33, 'overwrite'] : [32, '   create']
      puts "\033[0;#{color}m#{action}\033[0m #{output_file_name}"
      File.open(output_file_name,'w') {|f| f.write(result)}
    end

    # Check that all haml templates have been rendered.
    def refresh
      Dir.glob('haml/**/*.haml').each do |file|
        file.gsub!(/^haml\//, '')
        compile(file) unless File.exist?(output_file(file))
      end
    end
  end
end
