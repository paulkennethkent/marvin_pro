class Customer < ActiveRecord::Base
	has_many :tickets
  has_one :school
  
  EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\Z/i
  POSTCODE_REGEX = /^([A-PR-UWYZ]([0-9]{1,2}|([A-HK-Y][0-9]|[A-HK-Y][0-9]([0-9]|[ABEHMNPRV-Y]))|[0-9][A-HJKS-UW])\s?[0-9][ABD-HJLNP-UW-Z]{2}|(GIR\ 0AA)|(SAN\ TA1)|(BFPO\ (C\/O\ )?[0-9]{1,4})|((ASCN|BBND|[BFS]IQQ|PCRN|STHL|TDCU|TKCA)\ 1ZZ))$$/i
  validates_presence_of :name
  validates_length_of :name, :maximum => 255
  validates_presence_of :email
  validates_length_of :email, :maximum => 100
  validates_format_of :email, :with => EMAIL_REGEX
  #validates_confirmation_of :email 
  #validates_presence_of :postcode
  #validates_length_of :postcode, :maximum => 30
  #validates_format_of :postcode, :with => POSTCODE_REGEX
  
  
end
