#!/usr/bin/env ruby

require 'rubygems'

spec = Gem::Specification.new do |s|
    s.name = 'ruby-which'
    s.version = '0.5.0'
    s.summary = 'Like the UNIX "which" tool for Ruby libraries.'
    s.description = %{Use ruby-which for those times when you don't know which version of a library you're require-ing, or from what path on your system it's coming from.}
    #s.homepage = 'http://purepistos.net/diakonos'
    #s.rubyforge_project = 'ruby-which'

    s.authors = [ 'Pistos' ]
    s.email = 'pistos at purepistos dot net'

    s.files = [
        #'CHANGELOG',
        'README.markdown',
        'LICENCE',
        'bin/rwhich',
        'lib/ruby-which.rb',
    ]
    s.executables = [ 'rwhich' ]
    s.extra_rdoc_files = [ 'README.markdown', 'LICENCE', ]
    #s.test_files = Dir.glob( 'test/*-test.rb' )
    s.has_rdoc = true
end

if $PROGRAM_NAME == __FILE__
    Gem::Builder.new( spec ).build
end