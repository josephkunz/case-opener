def case_opener
  puts "Insert case in the following format: c-123/24"
  print ">>>> "
  case_id = gets.chomp
  puts case_id

  puts "the case for #{case_id} will be opened in the browser!"
  system("open", "http://curia.europa.eu/juris/liste.jsf?language=en&num=#{case_id}")
end

case_opener
