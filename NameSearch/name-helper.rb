require './babynames.rb'

def create_name_array(babyname = 'A')
  name = NamesTable.first(:name=>babyname)
  if name
    array = []
    pair = []
    pair.push('1900')
    if name.year1900.is_a? Integer
      pair.push(name.year1900)
    end
    array.push(pair)
    pair = []
    pair.push('1910')
    if name.year1900.is_a? Integer
      pair.push(name.year1910)
    end
    array.push(pair)
    pair = []
    pair.push('1920')
    if name.year1900.is_a? Integer
      pair.push(name.year1920)
    end
    array.push(pair)
    pair = []
    pair.push('1930')
    if name.year1900.is_a? Integer
      pair.push(name.year1930)
    end
    array.push(pair)
    pair = []
    pair.push('1940')
    if name.year1900.is_a? Integer
      pair.push(name.year1940)
    end
    array.push(pair)
    pair = []
    pair.push('1950')
    if name.year1900.is_a? Integer
      pair.push(name.year1950)
    end
    array.push(pair)
    pair = []
    pair.push('1960')
    if name.year1900.is_a? Integer
      pair.push(name.year1960)
    end
    array.push(pair)
    pair = []
    pair.push('1970')
    if name.year1900.is_a? Integer
      pair.push(name.year1970)
    end
    array.push(pair)
    pair = []
    pair.push('1980')
    if name.year1900.is_a? Integer
      pair.push(name.year1980)
    end
    array.push(pair)
    pair = []
    pair.push('1990')
    if name.year1900.is_a? Integer
      pair.push(name.year1990)
    end
    array.push(pair)
    pair = []
    pair.push('2000')
    if name.year1900.is_a? Integer
      pair.push(name.year2000)
    end
    array.push(pair)

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