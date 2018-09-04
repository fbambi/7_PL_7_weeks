def grep(filename,key)
  File.open(filename) do |file|
    lineCount = 0;
    regexp = Regexp.new(key)
    while line = file.gets
      if regexp.match(line)
        puts "detected #{key} on line-#{lineCount}"
      end
      lineCount += 1
    end
  end
end

grep('./text.txt','cat')
