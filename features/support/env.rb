require 'appium_lib'

def android_caps
  apk_path = File.join(File.dirname(__FILE__), '..', '..', 'android_apk', 'ContactManager.apk')

  { caps: { platformName: :android, app: apk_path, deviceName: 'TODO' } }
end


def ios_caps
  apk_path = File.join(File.dirname(__FILE__), '..', '..', 'ios_app', 'TestApp.zip')

  { caps: { platformName: :ios, app: apk_path,
            platformVersion: '9.2',
            deviceName: 'iPhone Simulator' } }
end

opts = case ENV['OS'].to_s
         when 'android'
           android_caps
         when 'ios'
           ios_caps
         when ''
           raise 'Please provide OS type android or ios.'
         else
           raise "Unknown OS type: #{ENV['OS']}"
       end

$driver = Appium::Driver.new(opts)
$driver.start_driver
