require "ordered_find/version"
require "active_record"

module ActiveRecord
  class Relation
    def ordered_find(*args)
      ids = args.flatten
      where(id: ids).sort_by {|object| ids.index(object.id) }
    end
  end

  class Base
    class << self
      delegate :ordered_find, to: :all
    end
  end
end
