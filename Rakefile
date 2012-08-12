require "bundler/gem_tasks"

LIB_FILES = FileList.new('lib/**/*.rb').
  exclude('lib/chemistry-temperature.rb',
          'lib/chemistry-temperature/version.rb',
          'lib/chemistry/temperature/errors.rb')
TEST_FILES = LIB_FILES.pathmap('%{^lib,test}d/test_%f')

task :test do
  TEST_FILES.zip(LIB_FILES).each do |test_file, lib_file|
    ruby "-I lib -I . -I test -r #{lib_file} #{test_file}"
  end
end

task :default => :test
