function [y, T] = dynamic_53(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  T(947)=params(136)*(y(425)/y(1366))^(-params(141))*(y(1306)/T(84))^params(141);
  y(1336)=(1-params(136))*(y(1367)/y(1366))^(-params(141))+T(947)*y(395);
  y(1297)=y(1293)*y(1336);
end
