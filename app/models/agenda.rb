class Agenda
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::MultiParameterAttributes
  include Mongoid::Slug

  field :title
  field :description
  field :type
  field :date, :type => DateTime
  field :place

  TYPES = %W( course dojo event hack_day meeting mentoring )

  validates_presence_of :title, :date, :place
  validates_inclusion_of :type, :in => TYPES

  scope :future, -> { where(:date.gte => Date.today).desc(:date) }
  scope :past,  -> { where(:date.lte => Date.today).desc(:date) }

  slug :title

  index({ date: 1 })
end
