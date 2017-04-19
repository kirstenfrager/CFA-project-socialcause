class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  # config.time_zone = "Sydney"
  # config.active_record.default_timezone = :local
end
