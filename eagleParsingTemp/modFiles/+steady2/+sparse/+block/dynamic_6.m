function [y, T] = dynamic_6(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(5226)=(1-params(89))*x(2)+params(89)*y(249)+x(15);
  y(5242)=(1-params(90))*x(3)+params(90)*y(265)+x(16);
  y(5316)=(1-params(92))*x(4)+y(339)*params(92)+x(17);
  y(5317)=(1-params(93))*x(5)+y(340)*params(93)+x(18);
  y(5318)=x(6)*(1-params(94))+y(341)*params(94)+x(19);
  y(5319)=(1-params(95))*x(7)+y(342)*params(95)+x(20);
  y(5321)=(1-params(97))*x(9)+y(344)*params(97)+x(22);
  y(5320)=(1-params(96))*x(8)+y(343)*params(96)+x(21);
  y(5341)=(1-params(99))*x(10)+params(99)*y(364)+x(24);
end
