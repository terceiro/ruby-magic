# -*- encoding: utf-8 -*-

# :enddoc:

#
# ruby-magic.gemspec
#
# Copyright 2013 Krzysztof Wilczynski
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

Gem::Specification.new do |s|
  s.name = 'ruby-magic'

  s.description = <<-EOS
Simple interface to libmagic for Ruby Programming Language
  EOS

  s.platform = Gem::Platform::RUBY
  s.version  = File.read('VERSION').strip
  s.license  = 'Apache License, Version 2.0'
  s.author   = 'Krzysztof Wilczynski'
  s.email    = 'krzysztof.wilczynski@linux.com'
  s.homepage = 'http://about.me/kwilczynski'

  s.rubyforge_project = 'ruby-magic'
  s.rubygems_version  = '~> 1.3.7'
  s.has_rdoc          = true

  s.summary = 'Simple interface to libmagic for Ruby Programming Language'

  s.files = Dir['ext/**/*.{c,h,rb}'] +
            Dir['lib/**/*.rb'] +
            %w(Rakefile AUTHORS CHANGES CHANGES.rdoc COPYRIGHT
               LICENSE README README.rdoc TODO VERSION)

  s.executables   << 'magic'
  s.require_paths << 'lib'
  s.extensions    << 'ext/magic/extconf.rb'

  s.add_development_dependency 'rake', '>= 0.8.7'
  s.add_development_dependency 'rdoc', '>= 3.12'
  s.add_development_dependency 'test-unit', '>= 2.5.2'
  s.add_development_dependency 'rake-compiler', '>= 0.7.1'

  s.signing_key = File.expand_path('~/.gem/kwilczynski-private.pem')
end

# vim: set ts=2 sw=2 sts=2 et :
# encoding: utf-8
