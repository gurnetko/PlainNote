# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'calabash-ios', :sdk => :ios6, :device => :iphone, :reset_between_scenarios => false do
  watch(%r{^features/.+\.feature$})
  watch(%r{^features/support/.+$}) { 'features' }
  watch(%r{^features/step_definitions/(.+)_steps\.rb$}) { |m| Dir[File.join("**/#{m[1]}.feature")][0] || 'features' }
end

