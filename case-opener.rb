def case_opener
  puts "Insert case number in the following format: 123/24. When done, type: quit."
  print ">>>> C-"
  case_id = gets.chomp.capitalize
  until case_id.start_with?("q".capitalize) do
    puts "Insert case number in the following format: 123/24."
    print ">>>> C-"
    case_id = gets.chomp.capitalize
    puts case_id

    puts "the case for #{case_id} will be opened in the browser!"
    system("open", "http://curia.europa.eu/juris/liste.jsf?language=en&num=C-#{case_id}")
  end
  puts "Have fun with the case(s)!"
end

case_opener


# to implement:
# 1. while user input not "done" ask for user input and open user input


# 3. user can type case number(s) and receive either all cases opened in the browser
# => or reiceive all cases as pdfs (in the language of preference or default)
#   3.1. user input gets stored in array.
#        3.1.1 user input split by ";" and spaces removed.
#   3.2. array iteration and conditional: download all cases, else (unsuccesful)
#   3.3. open case in browser

# 4. better use Eur-lex instead of curia
