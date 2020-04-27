require "set"

class GraphNode
    attr_accessor :val, :neighbors, :target

    def initialize(value, neighbors)
        @value = value
        @neighbors = []
    end


    def bfs(starting, target)
        queue = [starting]
        visited = Set.new()

        until queue.empty?
            node = queue.shift
            if !visited.include?(node) && node.val == target
                return node.val
            end
                visited.add(node)
                queue += node.neighbors
        end
    end
end