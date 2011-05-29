class RequirementMap < ActiveRecord::Base
  belongs_to :requirement
  belongs_to :test_case
end
