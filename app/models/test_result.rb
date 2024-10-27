class TestResult < ApplicationRecord
  validates :test_name, :status, presence: true
end
