class Destiny < ApplicationRecord
  has_many :animal_deaths
  has_many :animal_sales
  
  #validates :name, :description, :obsolete, presence: true
  validates :name, presence: true
  
  scope :ascCreated_at,->{order(:created_at => "ASC")}
  scope :descCreated_at,->{order(:created_at => "DESC")}
  scope :ascName,->{order(:name => "ASC")}
  scope :descName,->{order(:name => "DESC")}
  scope :obs,->{where(:obsolete => false)}
  scope :obsAscName,->{where(:obsolete => false).orde´r(:name)}
end