# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/android'

begin
  require 'bundler'
  Bundler.require
rescue LoadError
end

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'simplelist'
  app.package = "com.gdurelle.simplelist"
  # app.icon = 'ic_launcher'
  # app.theme = "@android:style/Theme.Holo.Light"
  app.api_version = '22'

  # app.version_name = "0.0.1"
  # app.version_code = (`git rev-list HEAD --count`.strip.to_i).to_s

  # The child method returns the first child of the passed-in type from the manifest
  # app.manifest.child('application') do |application|
  #   application['android:theme'] = '@android:style/Theme.Holo.Light.NoActionBar'
  # end
end
