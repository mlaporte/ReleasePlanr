class TestCase < ActiveRecord::Base
  belongs_to :test_specification
  belongs_to :user

  validates :name, :uniqueness => { :scope => :product_id },
                   :presence   => true,
                   :length     => { :maximum => 100 }
  validates :description, :length => { :maximum => 5000 }

end
