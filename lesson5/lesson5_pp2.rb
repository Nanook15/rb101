# Order this array of hashes using the year published
# from the earliest to the latest


books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

books = books.sort do |a, b|
  a[:published].to_i <=> b[:published].to_i
end 

p books

# The Launch School solution highlighted that we do not need to convert to an integer
# because we are dealing with 4 digit strings, and so can compared them as strings without conversion

books.sort_by do |book|
  book[:published]
end

