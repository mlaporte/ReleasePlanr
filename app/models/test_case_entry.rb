class TestCaseEntry < ActiveRecord::Base
  belongs_to :test_plan
  belongs_to :test_case
  belongs_to :user
end
