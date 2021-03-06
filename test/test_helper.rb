# frozen_string_literal: true
require 'simplecov'
SimpleCov.start do
  enable_coverage :branch
  add_filter "/test/"
end
require 'bundler'

begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end

require 'minitest/autorun'
require 'usedby'
