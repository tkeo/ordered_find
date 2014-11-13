require "ordered_find/version"
require "active_record"

module ActiveRecord
  class Relation
    def ordered_find(*args)
      ids = args.flatten
      find(ids.uniq).index_by(&:id).values_at(*ids)
    end

    def ordered_find_by_id(*args)
      ids = args.flatten
      where(id: ids.uniq).index_by(&:id).values_at(*ids)
    end
  end

  class Base
    class << self
      delegate :ordered_find, to: :all
      delegate :ordered_find_by_id, to: :all
    end
  end
end
