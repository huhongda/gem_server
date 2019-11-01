# Set up gems listed in the Gemfile.
ENV['BUNDLE_GEMFILE'] ||= 'Gemfile'
require 'bundler/setup' if File.exists?(ENV['BUNDLE_GEMFILE'])
Bundler.require(:default, ENV['RACK_ENV'] || 'development')

module GemServer
  def self.root
    File.expand_path('../..', __FILE__)
  end
end