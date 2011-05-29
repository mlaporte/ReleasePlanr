class Release < ActiveRecord::Base
  attr_accessible :name, :details, :product_id
  
  belongs_to :product
  has_many   :requirements, :dependent => :destroy

  validates :name, :presence   => true,
                   :length     => { :maximum => 100 },
		   :uniqueness => { :scope => "product_id" }

  validates :product, :presence   => true,

end
