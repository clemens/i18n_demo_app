{ 
  :'th' => {
    :date => {
      :formats => {
        :default      => lambda { |date| "%d-%m-#{date.year+543}" },
        :short        => "%e %b",
        :long         => lambda { |date| "%e %B #{date.year+543}" },
        :long_ordinal => lambda { |date| "%e %B #{date.year+543}" },
        :only_day     => "%e"
      },
      :day_names => %w(อาทิตย์ จันทร์ อังคาร พุธ พฤหัสบดี ศุกร์ เสาร์),
      :abbr_day_names => %w(อา จ อ พ พฤ ศ ส),
      :month_names => [nil] + %w(มกราคม กุมภาพันธ์ มีนาคม เมษายน พฤษภาคม มิถุนายน กรกฎาคม สิงหาคม กันยายน ตุลาคม พฤศจิกายน ธันวาคม),
      :abbr_month_names => [nil] + %w(ม.ค. ก.พ. มี.ค. เม.ย. พ.ค. มิ.ย. ก.ค. ส.ค. ก.ย. ต.ค. พ.ย. ธ.ค.),
      :order => [:day, :month, :year]
    },
    :time => {
      :formats => {
        :default      => lambda { |time| "%a %d %b #{time.year+543} %H:%M:%S %Z" },
        :time         => "%H:%M น.",
        :short        => "%d %b %H:%M น.",
        :long         => lambda { |time| "%d %B #{time.year+543} %H:%M น." },
        :long_ordinal => lambda { |time| "%d %B #{time.year+543} %H:%M น." },
        :only_second  => "%S"
      },
      :time_with_zone => {
        :formats => {
          :default => lambda { |time| "%Y-%m-%d %H:%M:%S #{time.formatted_offset(false, 'UTC')}" }
        }
      },
      :am => '',
      :pm => ''
    },
    :datetime => {
      :formats => {
        :default => "%Y-%m-%dT%H:%M:%S%Z"
      },
      :distance_in_words => {
        :half_a_minute       => 'ครึ่งนาทีที่ผ่านมา',
        :less_than_x_seconds => 'น้อยกว่า {{count}} วินาที',
        :x_seconds           => '{{count}} วินาที',
        :less_than_x_minutes => 'น้อยกว่า {{count}} วินาที',
        :x_minutes           => '{{count}} นาที',
        :about_x_hours       => 'ประมาณ {{count}} ชั่วโมง',
        :x_hours             => '{{count}} ชั่วโมง',
        :about_x_days        => 'ประมาณ {{count}} วัน',
        :x_days              => '{{count}} วัน',
        :about_x_months      => 'ประมาณ {{count}} เดือน',
        :x_months            => '{{count}} เดือน',
        :about_x_years       => 'ประมาณ {{count}} ปี',
        :over_x_years        => 'เกิน {{count}} ปี'
      }
    },

    # numbers
    :number => {
      :format => {
        :precision => 3,
        :separator => '.',
        :delimiter => ','
      },
      :currency => {
        :format => {
          :unit => 'Baht',
          :precision => 2,
          :format => '%n %u'
        }
      },
    },

    # Active Record
    :active_record => {
      :error => {
        :header_message => "ไม่สามารถบันทึก {{object_name}} ได้เนื่องจากเกิด {{count}} ข้อผิดพลาด",
        :message => "โปรดตรวจสอบข้อมูลที่คุณกรอกในช่องต่อไปนี้:"
      }
    },
    :active_record => {
      :error_messages => {
        :inclusion => "ไม่ได้อยู่ในลิสต์",
        :exclusion => "ถูกจองเอาไว้แล้ว",
        :invalid => "ไม่ถูกต้อง",
        :confirmation => "ไม่ตรงกับการยืนยัน",
        :accepted  => "ต้องอยู่ในรูปแบบที่ยอมรับ",
        :empty => "ต้องไม้เว้นว่างเอาไว้",
        :blank => "ต้องไม่เว้นว่างเอาไว้",
        :too_long => "ยาวเกินไป (ต้องไม่เกิน {{count}} ตัวอักษร)",
        :too_short => "สั้นเกินไป (ต้องยาวกว่า {{count}} ตัวอักษร)",
        :wrong_length => "มีความยาวไม่ถูกต้อง (ต้องมีความยาว {{count}} ตัวอักษร)",
        :taken => "ถูกใช้ไปแล้ว",
        :not_a_number => "ไม่ใช่ตัวเลข",
        :greater_than => "ต้องมากกว่า {{count}}",
        :greater_than_or_equal_to => "ต้องมากกว่าหรือเท่ากับ {{count}}",
        :equal_to => "ต้องเท่ากับ {{count}}",
        :less_than => "ต้องน้อยกว่า {{count}}",
        :less_than_or_equal_to => "ต้องน้อยกว่าหรือเท่ากับ {{count}}",
        :odd => "ต้องเป็นเลขคี่",
        :even => "ต้องเป็นเลขคู่"
      }
    },
    :txt => {
      :main_title => "การแปลภาษาใน Rails",
      :app_name => "Application ตัวอย่าง",
      :sub_title => "วิธีการแปลภาษา application ของคุณโดยใช้ฟีเจอร์ i18n ใหม่ของ Rails",
      :contents => "สารบัญ",
      :menu => {
        :introduction => "เกริ่นนำ",
        :about => "เกี่ยวกับการแปลภาษา",
        :setup => "การติดตั้ง",
        :date_formats => "รูปแบบของวันที่",
        :time_formats => "รูปแบบของเวลา"
      },
      :about => {
        :title => "เกี่ยวกับ Application ตัวอย่างอันนี้",
        :author => "Application ตัวนี้ถูกเขียนขึ้นโดย {{mail_1}}.",
        :feedback => "ถ้าคุณมีข้อเสนอแนะต่างๆ อย่าลืมที่จะเขียนมาบอกเรา (เป็นภาษาอังกฤษ) ที่อีเมล์ข้างต้น และอย่าลืมเข้าไปติดตามข่าวคราวใหม่ๆ เกี่ยวกับ Rails และอื่นๆ ที่ {{blog_href}}",
        :licence => "Demo Application อันนี้ และเนื้อหาทั้งหมดของมัน ถูกปกป้องอยู่ภายใต้ {{licence_href}} ซึ่งถ้าคุณต้องการใช้มันในกรณีที่ไม่ตรงกับสัญญาฉบับนี้ โปรดติดต่อมาที่ผม"
      },
      :active_record => {
        :too_lazy => "ไม่มีตัวอย่างภายในหน้านี้ เนื่องจากผมขี้เกียจที่จะนั่งคิดค่าต่างๆ ที่จะแสดง error <strong>ทุกอัน</strong> ;-)",
        :easy_to_understand => "แต่อย่างไรก็ตาม มันไม่น่ายากเกินที่คุณจะทำความเข้าใจครับ ลองเปิดดู source file ดู คุณน่าจะมองเห็นภาพนะครับ :)"
      },
      :date_formats => {
        :rails_standards_work => "รูปแบบมาตรฐานของ Rails (Date::DATE_FORMATS) ยังสามารถใช้การได้:"
      },
      :date_helper => {
        :date_time_title => "ระยะห่างของ Date/Time",
        :forms_title => "ฟอร์ม"
      },
      :index => {
        :others => "อีกหลายคน",
        :introduction => "ที่ผ่านมานั้น {{sven_blog}} ได้ทำงานส่วนใหญ่พร้อมกับนักพัฒนา {{sven_github}} เพื่อเตรียมพร้อมสำหรับการทำ Internationalization และ Localization ใน Rails",
        :story_so_far => "Application ตัวอย่างนี้พยายามที่จะแสดงให้คุณเห็นว่าคุณสามารถใช้งานฟีเจอร์เกี่ยวกับการแปลภาษา ที่ถูกเพิ่มเข้าไปใน Rails ได้อย่างไร คุณจะได้สามารถนำไปใช้ใน Rails application ของคุณต่อไป"
      },
      :number_helper => {
        :note_one => "หมายเหตุ: <code>number_to_phone</code> นั้นยังไม่ได้ถูกแปล และอาจจะไม่ได้อยู่ในส่วนที่ถูกแปล (อย่างน้อยๆ คืออาจจะไม่ได้อยู่ในส่วนกลาง) ดังนั้นถ้าคุณต้องการใช้เราขอแนะนำให้คุณลองมองหา plugin สำหรับการ internationalization/localization อย่างเช่น {{globalize}} ซึ่งเราคิดว่าพวกเขาน่าจะเตรียมเอาไว้รองรับในส่วนนี้",
        :note_two => "อีกหมายเหตุ: <code>number_to_currency</code>, <code>number_to_percentage</code> และ <code>number_to_human_size</code> นั้นได้เรียกใช้ <code>number_with_precision</code> ภายในเมธอด และ <code>number_with_precision</code> เรียกใช้ <code>number_with_delimiter</code> ภายในเมธอด"
      },
      :setup => {
        :freezing_edge_and_adding => "ทำการ Freezing Edge และลง plugin localized_dates",
        :you_need_to_be_on_edge => "คุณจำเป็นที่จะต้องใช้ Edge Rails เพื่อที่จะใช้ฟีเจอร์ i18n ของ Rails:",
        :date_time_formats => "สำหรับการปรับรูปแบบของวันที่และเวลา คุณจำเป็นที่จะต้องลง {{localized_dates_link}}:",
        :config_locale => "การตั้งค่าภาษา",
        :best_place => "ในความคิดของเรา ที่ที่ดีที่สุดที่จะใส่ข้อมูลการตั้งค่านั้นอยู่ที่ <code>config/locales</code> โดยที่ plugin localized_dates นั้นจะทำการคัดลอกการตั้งค่าของภาษา en-US และ de-AT ลงใน directory นี้ คุณสามารถแก้ไข เพิ่มเติม และสร้างภาษาใหม่ได้ที่นี่",
        :locale => "นี่คือภาษาตัวอย่างที่ถูกใช้ใน application ตัวอย่างนี้",
        :defaults => "คุณจำเป็นที่จะต้องตั้งค่าภาษาที่จะเป็น default ใน <code>environment.rb</code> หรือไว้ใน initializer ก็ได้",
        :locale_structure_title => "เกี่ยวกับรูปแบบของการแปลภาษา",
        :locale_structure_number => "คุณอาจจะสังเกตเห็นว่าในส่วนของ <code>:number</code> นั้น เราได้ระบุ <code>:format</code> และ <code>:currency</code> เพราะฉะนั้นอาจกล่าวได้ว่าการตั้งค่าเกี่ยวกับภาษานั้นจะถูกจัดเรียงเอาไว้เป็นลำดับชั้น อย่างเช่น currencies นั้นก็เป็น numbers และ percentage ก็เป็น numbers (สกุลเงิน และ เปอร์เซนต์ ต่างก็เป็นตัวเลข) โดยในที่นี้ <code>:currency</code> นั้นสามารถที่จะเขียนให้เอามาใช้แทนที่ <code>:format</code> ทั่วไป (ในโค้ดของเราเขียนให้ <code>:precision</code> เป็น 2 จากปกติ 3) หรือขยายความ (เราได้เพิ่ม option ใหม่สองอัน คือ <code>:unit</code> และ <code>:format</code>)",
        :locale_structure_date_time => "และสำหรับวันที่และเวลาก็มีผลเช่นเดียวกับที่กล่าวไว้ด้านบน แต่คุณก็สามารถตั้งค่าให้ <code>:datetime</code> และ <code>:time_with_zone</code> มีรูปแบบที่ต่างออกไปได้ โดยที่จะยึดถือตามประเภทของข้อมูล (data type) แต่ส่วนใหญ่แล้ว คุณอาจจะไม่เห็นถึงความจำเป็นมากนักที่จะให้รูปแบบต่างจาก <code>:time</code> สักเท่าไร"
      },
      :time_formats => {
        :rails_standards_work => "รูปแบบมาตรฐานของ Rails (Time::DATE_FORMATS) ยังสามารถใช้งานได้:"
      }
    }
  }
} 