class Agenda
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::MultiParameterAttributes
  
  field :title
  field :description
  field :type
  field :date, :type => DateTime
  field :place
  
  TYPES = %W( event meeting course )
  
  validates_presence_of :title, :date, :place
  validates_inclusion_of :type, :in => TYPES
end
