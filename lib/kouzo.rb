require "kouzo/version"

module Kouzo
  class Node < Struct.new(:parent, :val)
    attr_reader :children
    def initialize(parent, val)
      @children = []
    end

    def add(node, &call_in)
      @children << node
      yield node
    end
  end


end
