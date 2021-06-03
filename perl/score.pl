#!/usr/bin/perl 
open(FILE, score);
@lines = <FILE>;
close(FILE);

foreach $line (@lines) {
	chomp($line); # \n 문자를 제거하여 반환
	@fields = split(/ /, $line); # line에서 공백을 기준으로 데이터를 잘라서 배열에 대입

	if($line =~ /학번/) { # 헤더 부분인 경우
		for($i=0;$i<=$#fields;$i++){
			printf "%s\t", $fields[$i];
		}
		printf "총점\t평균\n";
		next;
	}

	else{
	        $count ++; #학생의 수	
			$subj_count = @fields -2; #과목의 갯수
			for($j=0;$j<$subj_count;$j++){
				@subjects[$j] += $fields[$j+2];
			}

			for($i=0;$i<=$#fields;$i++){
				printf "%s\t", $fields[$i];
				if($i >=2){
					$sum += $fields[$i];
				}
			}
			$avg = $sum / $subj_count;
			printf "%d\t%.1f\n", $sum, $avg;
			$sum = 0;
	}

	END {
		printf "  \t  \t";
		for($j=0;$j<$subj_count;$j++){
			printf "%.1f\t",@subjects[$j]/$count;
		}
		printf "\n";
	}
}
