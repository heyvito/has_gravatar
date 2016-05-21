require 'active_record'
require 'has_gravatar/version'
require 'has_gravatar/extensions'

ActiveRecord::Base.send :include, HasGravatar::Extensions
