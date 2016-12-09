require './babynames.rb'
def create_name_array(babyname = 'A')
  name = NamesTable.first(:name=>babyname)
  if name
    array = []
    if array.length == 0
      pair = []
      pair.push('1900')
      pair.push(name.year1900.gsub(/[^0-9]+/,''))
      array.push(pair)
      pair = []
      pair.push('1910')
      pair.push(name.year1910.gsub(/[^0-9]+/,''))
      array.push(pair)
      pair = []
      pair.push('1920')
      pair.push(name.year1920.gsub(/[^0-9]+/,''))
      array.push(pair)
      pair = []
      pair.push('1930')
      pair.push(name.year1930.gsub(/[^0-9]+/,''))
      array.push(pair)
      pair = []
      pair.push('1940')
      pair.push(name.year1940.gsub(/[^0-9]+/,''))
      array.push(pair)
      pair = []
      pair.push('1950')
      pair.push(name.year1950.gsub(/[^0-9]+/,''))
      array.push(pair)
      pair = []
      pair.push('1960')
      pair.push(name.year1960.gsub(/[^0-9]+/,''))
      array.push(pair)
      pair = []
      pair.push('1970')
      pair.push(name.year1970.gsub(/[^0-9]+/,''))
      array.push(pair)
      pair = []
      pair.push('1980')
      pair.push(name.year1980.gsub(/[^0-9]+/,''))
      array.push(pair)
      pair = []
      pair.push('1990')
      pair.push(name.year1990.gsub(/[^0-9]+/,''))
      array.push(pair)
      pair = []
      pair.push('2000')
      pair.push(name.year2000.gsub(/[^0-9]+/,''))
      array.push(pair)
    end
    array.each do |v|
      if v[1] == 0
        v[1] = 1001
      end
    end
    array
  else
    nil
  end

end