class Product < ActiveRecord::Base
  validates :name, confirmation: true,
                   length: {minimum:3, maximum: 20},
                   uniqueness: true





end
