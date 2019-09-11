require 'postgres_ext/active_record/relation/merger'
require 'postgres_ext/active_record/relation/query_methods'
require 'postgres_ext/active_record/relation/predicate_builder/array_handler'

module ActiveRecord
  class Relation
    class WhereClause
      def modified_predicates(&block)
        WhereClause.new(predicates.map(&block), binds)
      end
    end
  end
end