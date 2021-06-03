# !/usr/bin/perl

while(1){
printf "IP 주소를 입력해주세요\n>";
$IP = <STDIN>;
chomp($IP);

if($IP =~ /(.*)\.(.*)\.(.*)\.(.*)/){
 foreach $num ($1,$2,$3,$4) {
	if($num > 255 || $num <0) { # 각 옥텟의 값이 음수거나 255를 넘어가는 경우
		print "ip 주소의 범위는 0~255 입니다.\n";
		goto A;
	}

 }
 print "ip주소 형식이 맞습니다.\n";
}

else{ 
print "$IP 은(는) IP주소 형식이 아닙니다.\n"; 
}

A:
printf "계속 하시겠습니까? (y/n)\n>";
$chk = <STDIN>;

if($chk =~ /y/ || $chk =~ /Y/){
	next;
}

elsif($chk =~ /n/ || $chk =~ /N/){
	print "프로그램을 종료하겠습니다.\n";
	exit;
}

else{
	print "잘못 입력하셨습니다.\n\n";
	sleep(2);
	goto A;
	next;
}

}
