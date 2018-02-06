# frozen_string_literal: true

module Inkoc
  module AST
    class TraitImplementation
      include TypeOperations
      include Predicates
      include Inspect

      attr_reader :trait_name, :object_names, :body, :location

      attr_accessor :block_type

      # trait_name - The name of the trait being implemented.
      # object_names - The names of the objects to implement the trait for.
      # body - The body of the implementation.
      # location - The SourceLocation of the implementation.
      def initialize(trait_name, object_names, body, location)
        @trait_name = trait_name
        @object_names = object_names
        @body = body
        @location = location
        @block_type = nil
      end

      def visitor_method
        :on_trait_implementation
      end
    end
  end
end
