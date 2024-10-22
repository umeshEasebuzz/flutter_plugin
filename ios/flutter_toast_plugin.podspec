Pod::Spec.new do |s|
  s.name             = 'flutter_toast_plugin'
  s.version          = '0.0.1'
  s.summary          = 'A Flutter plugin to show native iOS toast messages using the Toast pod.'
  s.description      = <<-DESC
                      A plugin that allows Flutter apps to display native toast messages on iOS using the Toast pod library.
                      DESC
  s.homepage         = 'https://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Name' => 'your.email@example.com' }
  s.source           = { :path => '.' }
  s.source_files     = 'Classes/**/*'
  s.ios.deployment_target = '11.0'
  s.dependency       'Flutter'

  # Add the Toast Pod dependency here
  s.dependency       'Toast'
end
