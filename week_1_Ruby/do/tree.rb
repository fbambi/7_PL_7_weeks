class Tree
  attr_accessor :children, :node_name

  def initialize(hashNode)
    rootName = hashNode.keys[0]
    node = parse_tree(rootName, hashNode[rootName])
    @children = node["children"]
    @node_name = node["name"]
  end

  def parse_tree(name, value)
    node = {'name' => name, 'children' => value.map {|key, value|Tree.new({key => value})}}
    node
  end

  def visit_all(&block)
    visit &block
    children.each {|c| c.visit_all &block}
  end

  def visit(&block)
    block.call self
  end
end

hash_node = {'grandpa' => { 'dad' => {'child 1' => {}, 'child 2' => {} }, 'uncle' => {'child 3' => {}, 'child 4' => {} } } }

ruby_tree = Tree.new(hash_node)

puts "Visiting a node"
ruby_tree.visit {|node| puts node.node_name}
puts '================='

puts "visiting entire tree"
ruby_tree.visit_all {|node| puts node.node_name}