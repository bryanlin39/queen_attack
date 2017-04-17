class Array
  define_method(:queen_attack?) do |coordinates|
    self[1]==coordinates[1] ||
    self[0]==coordinates[0] ||
    self[0]-coordinates[0]==self[1]-coordinates[1] ||
    self[0]-coordinates[0]==(self[1]-coordinates[1])*-1
  end
end
