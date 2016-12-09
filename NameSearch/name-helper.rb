require './babynames.rb'
def create_name_array(babyname = 'A')
  name = NamesTable.first(:name=>babyname)
  if name
    array = []
    if array.length == 0
      pair = []
      pair.push('1900')
      pair.push(name.year1900)
      array.push(pair)
      pair = []
      pair.push('1910')
      pair.push(name.year1910)
      array.push(pair)
      pair = []
      pair.push('1920')
      pair.push(name.year1920)
      array.push(pair)
      pair = []
      pair.push('1930')
      pair.push(name.year1930)
      array.push(pair)
      pair = []
      pair.push('1940')
      pair.push(name.year1940)
      array.push(pair)
      pair = []
      pair.push('1950')
      pair.push(name.year1950)
      array.push(pair)
      pair = []
      pair.push('1960')
      pair.push(name.year1960)
      array.push(pair)
      pair = []
      pair.push('1970')
      pair.push(name.year1970)
      array.push(pair)
      pair = []
      pair.push('1980')
      pair.push(name.year1980)
      array.push(pair)
      pair = []
      pair.push('1990')
      pair.push(name.year1990)
      array.push(pair)
      pair = []
      pair.push('2000')
      pair.push(name.year2000)
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