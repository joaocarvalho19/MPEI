function SimilarUsers = ItensSimilaresHash(threshold, Nu, MHdistance, users)

  SimilarUsers = zeros(1,3);
  k = 1;
  for n1= 1:Nu
    for n2= n1+1:Nu
      if MHdistance(n1,n2) < threshold
        SimilarUsers(k,:)= [users(n1) users(n2) MHdistance(n1,n2)];
        printf("1: %d | 2: %d | Dist: %f\n",users(n1), users(n2), MHdistance(n1,n2))
        k = k+1;
      end
    end
  end
  if k==1
    printf("No results")
  endif
endfunction