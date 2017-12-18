# -*- encoding: utf-8 -*-
require File.expand_path(File.join('..', 'lib', 'devise-onesignal', 'version'), __FILE__)

Gem::Specification.new do |gem|
    gem.name                  = 'devise-onesignal'
    gem.version               = DeviseOneSignal::VERSION
    gem.platform              = Gem::Platform::RUBY
    gem.summary               = 'Implement user targeted cross-platform notifications in your Rails app'
    gem.description           = 'Implement user targeted cross-platform notifications with OneSignal & Devise in your Rails app.'
    gem.authors               = 'Jonas Hübotter'
    gem.email                 = 'jonas.huebotter@gmail.com'
    gem.homepage              = 'https://github.com/jonhue/devise-onesignal'
    gem.license               = 'MIT'

    gem.files                 = `git ls-files`.split("\n")
    gem.require_paths         = ['lib']

    gem.post_install_message  = IO.read('INSTALL.md')

    gem.required_ruby_version = '>= 2.3'

    gem.add_development_dependency 'bundler', '~> 1.16'
    gem.add_development_dependency 'rake', '~> 10.0'
    gem.add_dependency 'rails', '>= 4.0'
    gem.add_dependency 'devise', '~> 4.3'
end
