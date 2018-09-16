#1から30までの数字を順番に表示させて、
#3の倍数のときだけ1秒プログラムを停止させる

def is_three(x)
	sleep(1) if x % 3 == 0
end

i = 1
while i <= 30 do
	puts i
	is_three(i)
	i += 1
end