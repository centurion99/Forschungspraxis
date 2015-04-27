figure 
 
subplot(2,2,1)
plot(errorus)
title('Sync Error');
xlabel('Time in 2s')
ylabel('Error in us')


subplot(2,2,2)
hist(errorus(21:end),100)
title('Histogram Sync Error');
xlabel('Error in us')
ylabel('Occurrence')


subplot(2,2,3)
a= find(diff(errorus)<-1);
%a= find(diff(errorus)>1);
a=a+1;
hist(errorus(a(2:end)));
title('Histogram ReSync Error');
xlabel('Error in us')
ylabel('Occurrence')


subplot(2,2,4)
stem(errorus(a(2:end)));
title('Resynchronisierungzeitpunkte');
xlabel('Number of Resynchronisations')
ylabel('Error in us')