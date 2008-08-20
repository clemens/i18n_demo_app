$:.unshift(File.dirname(__FILE__) + '/../lib')

require 'test/unit'
require 'rubygems'
require 'action_controller'
require 'action_controller/assertions'
require 'in_place_editing'
require 'in_place_macros_helper'

$:.unshift(File.dirname(__FILE__))

require 'i18n'

def clear_locale
  I18n.locale = nil
end

def localizate(locale)
  I18n.locale = locale
  I18n.populate do
    require "test/locale/#{locale}.rb"
  end
end