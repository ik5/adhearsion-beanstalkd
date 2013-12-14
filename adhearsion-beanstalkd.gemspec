# encoding: utf-8

$:.push File.expand_path('../lib', __FILE__)
require 'adhearsion/beanstalkd/version'

Gem::Specification.new do |s|
  s.name        = 'adhearsion-beanstalkd'
  s.version     = Adhearsion::Beanstalkd::VERSION
  s.authors     = ['Ido Kanner']
  s.email       = ['idok@linesip.com']
  s.homepage    = ''
  s.summary     = 'A beanstalkd server for executing jobs inside Adhearsion'
  s.description = 'A beanstalkd server for executing jobs inside Adhearsion'
  s.license     = 'MIT'

  s.rubyforge_project = 'adhearsion-beanstalkd'

  s.files         = `git ls-files`.split("\n")
  s.require_paths = ['lib']

  s.add_runtime_dependency 'adhearsion', ['~> 2.0']
  s.add_runtime_dependency 'backburner', ['~> 0.4.5']
end
