input = '1,2;a,b,c,d;3,4,5,6,7;e,f;8;g,h,i;9,0'

groups = input.split(';').map{|group|group.split(',')}
temp = groups.shift
groups.each do |group|
  temp = temp.product(group).map{|e|e.flatten}
end
temp.each {|ary|puts ary.join(',')}
