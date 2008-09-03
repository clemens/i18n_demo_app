require File.dirname(__FILE__) + '/spec_helper'

describe "Date and Time localization" do
  before(:each) do
    # load locale files
    locales_dir = File.dirname(__FILE__) + "/../lib/templates/locales"
    I18n.load_translations("#{locales_dir}/en-US.rb")
    I18n.load_translations("#{locales_dir}/en-US.yml")

    # set up defaults
    @date_defaults = { :default      => "%Y-%m-%d",
                       :short        => "%e %b",
                       :long         => "%B %e, %Y",
                       :long_ordinal => lambda { |date| "%B #{date.day.ordinalize}, %Y" } }
    @time_defaults = { :default      => "%a %b %d %H:%M:%S %Z %Y",
                       :time         => "%H:%M",
                       :short        => "%d %b %H:%M",
                       :long         => "%B %d, %Y %H:%M",
                       :long_ordinal => lambda { |time| "%B #{time.day.ordinalize}, %Y %H:%M" } }
    @datetime_defaults = { :default => "%Y-%m-%dT%H:%M:%S%Z" }
    @time_with_zone_defaults = { 
      :default => lambda { |time| "%Y-%m-%d %H:%M:%S #{time.formatted_offset(false, 'UTC')}" }
    }
  end

  describe Date do
    it "should translate format when to_s is called" do
      I18n.should_receive(:translate).with(:'date.formats', :raise => true).and_return(@date_defaults)
      Date.today.to_s(:short)
    end
  end

  describe Time do
    it "should translate format when to_s is called" do
      I18n.should_receive(:translate).with(:'time.formats', :raise => true).and_return(@time_defaults)
      Time.now.to_s(:short)
    end
  end

  describe DateTime do
    it "should translate format when to_s is called" do
      I18n.should_receive(:translate).with(:'time.formats', :raise => true).and_return(@time_defaults)
      I18n.should_receive(:translate).with(:'time.datetime.formats', :raise => true).and_return(@datetime_defaults)
      DateTime.now.to_s(:short)
    end
  end

  describe ActiveSupport::TimeWithZone do
    it "should translate format when to_s is called" do
      I18n.should_receive(:translate).with(:'time.formats', :raise => true).and_return(@time_defaults)
      I18n.should_receive(:translate).with(:'time.time_with_zone.formats', :raise => true).and_return(@time_with_zone_defaults)

      t, z = Time.utc(2000, 1, 1, 0), ActiveSupport::TimeZone['UTC']
      ActiveSupport::TimeWithZone.new(t, z).to_s(:short)
    end
  end
end