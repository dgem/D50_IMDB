class Film < ActiveRecord::Base
  
  validates_presence_of :rating, :url, :title # test case 1
  #validates_numericality_of :rating # test case 2 (presence_of is acutally now redundant)
  validates_numericality_of :rating, :greater_than => 0, :less_than => 7 # test case 3 (previous validates in combined into this statement)
  #validate_numericality_of :rating, if=>Proc.new{|film| film.rating>0 & film<6} #alternative of above
  validates_uniqueness_of :url
  
end

# == Schema Information
#
# Table name: films
#
#  id         :integer         not null, primary key
#  title      :string(255)
#  url        :string(255)
#  created_at :datetime
#  updated_at :datetime
#  rating     :integer
#

