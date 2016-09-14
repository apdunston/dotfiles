watch( '(test/.*_test.rb)' )  {|md| system("noti ruby -I test #{md[1]}") }
watch( '(app|lib)/.*/(.*).rb' )  {|md|
  find = "find test -name \"#{md[2]}*_test.rb\""
  found = `#{find}`.split("\n")
  found.each do |item|
    command = "ruby -I test #{item}"
    puts command
    system(command)
  end
  system("noti -t 'Ruby Tests' -m 'Complete'")
}
