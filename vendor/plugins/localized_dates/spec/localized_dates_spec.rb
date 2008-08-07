require File.dirname(__FILE__) + '/spec_helper'

describe "Date and Time localization" do
  before(:each) do
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

    I18n.backend.store_translations 'en-US', :date => { :formats => @date_defaults },
      :time => { :formats => @time_defaults, :datetime => { :formats => @datetime_defaults },
      :time_with_zone => { :formats => @time_with_zone_defaults } }
  end

  describe Date do
    it "should translate format when to_s is called" do
      I18n.should_receive(:translate).with(:'date.formats').and_return(@date_defaults)
      Date.today.to_s(:short)
    end
  end

  describe Time do
    it "should translate format when to_s is called" do
      I18n.should_receive(:translate).with(:'time.formats').and_return(@time_defaults)
      Time.now.to_s(:short)
    end
  end

  describe DateTime do
    it "should translate format when to_s is called" do
      I18n.should_receive(:translate).with([:'time.formats', :'time.datetime.formats']).
        and_return([@time_defaults, @datetime_defaults])
      DateTime.now.to_s(:short)
    end
  end

  describe ActiveSupport::TimeWithZone do
    it "should translate format when to_s is called" do
      I18n.should_receive(:translate).with([:'time.formats', :'time.time_with_zone.formats']).
        and_return([@time_defaults, @time_with_zone_defaults])

      t, z = Time.utc(2000, 1, 1, 0), ActiveSupport::TimeZone['UTC']
      ActiveSupport::TimeWithZone.new(t, z).to_s(:short)
    end
  end
end