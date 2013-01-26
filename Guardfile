# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'bundler' do
  watch('Gemfile')
  # Uncomment next line if Gemfile contain `gemspec' command
  # watch(/^.+\.gemspec/)
end

guard 'shell' do
  watch(%r{source/(.*)}) do |m|
    system("make html")
  end
end

guard 'livereload' do
  watch(%r{build/(.*)\.html})
end
