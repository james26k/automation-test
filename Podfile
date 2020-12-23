# Uncomment the next line to define a global platform for your project
platform :ios, '14.0'

target 'automation-test' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for automation-test

  target 'automation-testTests' do
    inherit! :search_paths
    # Pods for testing
    pod 'Quick'
    pod 'Nimble'
  end

  target 'automation-testUITests' do
    # Pods for testing
  end
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      if config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'].to_f < 9.0
        config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '9.0'
      end
    end
  end
end
