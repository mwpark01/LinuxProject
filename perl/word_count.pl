# !/usr/bin/perl
BEGIN{%words = ();}

while(1){

printf "단어를 입력하세요\n>";
$word = <STDIN>;
chomp($word);

if(exists($words{$word})){ # 해시에 입력된 키값이 이미 있는 경우
	$words{$word} ++; # 값을 증가 시킨다.	
}

else{
$words{$word} = 1;
}

A:
printf "계속하시겠습니까? (y/n)\n>";
$chk = <STDIN>;

if($chk =~ /n/ || $chk =~ /N/){
	print "[입력된 단어들의 발생 빈도]\n";
	foreach $key (sort keys %words){ # 입력된 키값들을 정렬한후 출력한다.
		print "$key : $words{$key} 번\n";
	}
	exit;
}

else{
	next;
}
}
