figure
subplot(4,1,1)
plot(ans.state.time, ans.state.PP_Schange) ;
subplot(4,1,2)
plot(ans.state.time, ans.state.PP_Dchange) ;
subplot(4,1,3)
plot(ans.state.time, ans.state.fanoxicdist) ;
subplot(4,1,4)
semilogy(ans.state.time, ans.state.O2_A) ;