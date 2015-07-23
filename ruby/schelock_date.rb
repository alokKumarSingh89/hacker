def cal_differ input
  input.each do |key, value|
    start_year=value[0]
    end_year=value[1]
    count=0
    start_dd=start_year.split(":")[0].to_i
    start_mm=start_year.split(":")[1].to_i
    start_yy=start_year.split(":")[2].to_i
    end_dd=end_year.split(":")[0].to_i
    end_mm=end_year.split(":")[1].to_i
    end_yy=end_year.split(":")[2].to_i

    while start_yy<=end_yy #&& start_mm<=end_mm
      #break if start_dd==end_dd && start_mm==end_mm && start_yy==end_yy
      if start_dd>11
        start_mm+=1
        start_dd=start_mm-1

      end

      if  start_mm >=12
        start_yy+=1
        start_dd=1
        start_mm=2

      end

      start_mm +=1
      start_dd+=1

      count+=1 if (start_mm+1)==start_yy%100
    #  puts "#{start_dd}: #{start_mm} :#{start_yy} : #{count}"

    end
    puts count
  end
end
test_case=gets.chomp.to_i
input={}
count=0
test_case.times do
  input[count]=gets.chomp.split(" ")
  count+=1
end

cal_differ input
