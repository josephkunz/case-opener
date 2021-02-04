def case_opener
  puts "Insert case number in the following format: 123/24. When done, type: done."
  print ">>>> C-"
  case_id = gets.chomp.capitalize
  until case_id == "Done" do
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
