class Inquiry
  extend ActiveModel::Naming
  include ActiveModel::Conversion
  include ActiveModel::Validations
  include ActionView::Helpers::TextHelper
  
  attr_accessor :name, :email, :message, :nickname
  
  validates :name, 
            :presence => { :message => "نمیتواند خالی باشد" }
  
  validates :email,
            :presence => { :message => "نمیتواند خالی باشد" },
            :format => { :with => /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/, :message=> "معتبر نمیباشد" }
  
  validates :message,
            :length => { :minimum => 10, :maximum => 1000, :message => "حداقل ۱۰ کاراکتر میباشد" }
            
  #validates :nickname, 
            #:format => { :with => /^$/ }
          HUMANIZED_ATTRIBUTES = {
:name => "نام و نام خوانوادگی",
:email=> "پست الکترونیکی",
:message => "پیغام"
}
 def self.human_attribute_name(attr, options={})
    HUMANIZED_ATTRIBUTES[attr.to_sym] || super
end 

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end
  
  def deliver
    return false unless valid?
    Pony.mail({
      :from => %("#{name}" <#{email}>),
      :reply_to => email,
      :subject => "Website inquiry",
      :body => message,
      :html_body => simple_format(message)
    })
  end
      
  def persisted?
    false
  end
end