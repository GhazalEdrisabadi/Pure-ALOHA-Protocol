N=100000; %Number of packets in unit time
PacketArrivalTimes=rand(1,N);  %random numbers between 0 and 1

PLAIN ALOHA
x=sort(PacketArrivalTimes);
y1=diff(x);   %left difference between arrival times 
y2=diff(shift(x,1)); %right difference 
for m=1:100
  G(m)=0.2+m/50; %varying G between  0.2 and 2.2 in 100 steps
  dur=G(m)/N;
  NumberSuccessful = sum((y1>dur)&(y2>dur));
  suc(m) = NumberSuccessful*dur; 
end