$:.unshift File.expand_path("../lib", __FILE__)
require "hammer_cli_foreman_deployments/version"

Gem::Specification.new do |s|

  s.name     = "hammer_cli_foreman_deployments"
  s.authors  = ["Me"]
  s.version  = HammerCLIForemanDeployments.version.dup
  s.platform = Gem::Platform::RUBY
  s.summary  = %q{Foreman deployments CLI client}

  s.files         = Dir['lib/**/*.rb']
  s.require_paths = ["lib"]

  s.add_dependency 'hammer_cli_foreman', '>= 0.1.3'
end
