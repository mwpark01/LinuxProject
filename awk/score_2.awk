BEGIN { subj_count =0; }
	  {
	  	if($0 ~ /학번/) {
			printf("%s\t%s\t", $1, $2);
			for(i=3; i<= NF; i++){
				printf("%s\t",$i);
				subj_count++;
			}
			printf("총점\t평균\n");
			next;
		}
	   	count ++ # 파일에 저장 되어있는 학생의 수
		
		for( k=3; k<= NF; k++ ){
			score[k-3] += $k; #과목들의 score 값들을 저장할 배열
			sum += $k;
		}

	  	avg = sum / subj_count;

		for( i=1; i<= NF; i++ ) {
			if( i <=2 )
	  			printf "%s\t", $i;

			else 
				printf "%d\t", $i;
		}

	  	printf "%d\t%.1f\n", sum, avg;
		sum=0;
	  }

END { 	if (count > 0) {
		printf "  \t  \t";
		#for( i in score ){
		#	score[i] /= count;
        #    printf "%.1f\t", score[i];
		#}
		for(i=0;i<subj_count;i++){
			score[i] /= count;
          printf "%.1f\t", score[i];
		}
		printf "\n";
		}
	}
