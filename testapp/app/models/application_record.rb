class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
  logger.debug('>>>>>>>>>>>>>>> 2.0 ApplicationRecord Model')
end
