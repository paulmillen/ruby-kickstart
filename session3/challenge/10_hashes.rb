# Lets represent a file system with hashes
# You will be passed a hash table, whose keys represent folders.
# Their values will either be arrays of filenames in that directory
# or they will be hashes with the same rules (a treelike structure)
#
# Your job is to take the hashes, and return an array containing
# all of the complete file paths where each directory is separated by a '/'
#
# HINT:
#   [1,2,3].is_a? Array # => true
#   [1,2,3].is_a? Hash  # => false
#   {1=>1}.is_a?  Array # => false
#   {1=>1}.is_a?  Hash  # => true
#
# HINT2:
#   Don't feel constrained, you may create any methods, classes, etc, that
#   you need to you may address the problem in any way you need to (I
#   haven't tried it yet, but will probably use a recursive approach)
#
# EXAMPLES:
#
# pathify 'usr' => {'bin' => ['ruby'] }                                                        # => ['/usr/bin/ruby']
# pathify 'usr' => {'bin' => ['ruby', 'perl'] }                                                # => ['/usr/bin/ruby', '/usr/bin/perl']
# pathify 'usr' => {'bin' => ['ruby'], 'include' => ['zlib.h'] }                               # => ['/usr/bin/ruby', '/usr/include/zlib.h']
# pathify 'usr' => {'bin' => ['ruby']}, 'opt' => {'local' => {'bin' => ['sqlite3', 'rsync']} } # => ['/usr/bin/ruby', 'opt/local/bin/sqlite3', 'opt/local/bin/rsync']
# pathify                                                                                      # => []
#
#
# create it from scratch :)

def pathify(hash_param=Hash.new)

  return hash_param.map { |path| "/" + path} if hash_param.is_a? Array

  to_return = []
  hash_param.each do |key,value|
    parent = "/" + key
    child = pathify(value)
    child.each do |path|
      to_return << (parent + path)
    end
  end

  to_return
end


#  array1 = []
#  def array_path(array_param)
#	   array_param.each do |value|
#        + "/" + value.join() if value.is_a? Array
#    end
#  end

#  hash_param.each do |key,value|
#    array1 << "/" + key.to_s if key.is_a? Hash,
#    array1 << "/" + key.to_s if value.is_a? Hash,
#    array_path(value) if value.is_a? Array
#  end

#	array1
#end

#usr = {'bin' => ['ruby'], 'include' => ['zlib.h'] }

#pathify(usr)






#def pathify(hash_param=Hash.new)

#  return_array = []

#  return hash_param.each do |key,value|
#    if value.is_a? Array
#      value.each {|x| return_array << x}
#    end
#  end
#  puts return_array
#end

#pathify 'usr' => {'bin' => ['ruby', 'perl'] }
