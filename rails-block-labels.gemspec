# -*- ruby -*-
$LOAD_PATH.unshift(File.expand_path('../lib', __FILE__))
require 'shaven/version'

Gem::Specification.new do |s|
  s.name              = "rails-block-labels"
  s.rubyforge_project = "RailsBlockLabels"
  s.version           = "0.0.1"
  s.authors           = ["Chris Kowalik"]
  s.email             = ["chris@nu7hat.ch"]
  s.homepage          = "http://github.com/nu7hatch/rails-block-labels"
  s.summary           = "Hack for using i18n powered block labels in rails3 app!"
  s.description       = "Allows to use block labels as wrappers for inputs, without loosing i18n stuff."

  s.files             = `git ls-files`.split("\n")
  s.test_files        = `git ls-files -- {spec}/*`.split("\n")
  s.require_paths     = ['lib']

  s.add_dependency 'rails', '~> 3.0'
end
