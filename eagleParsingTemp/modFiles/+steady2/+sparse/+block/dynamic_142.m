function [y, T] = dynamic_142(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(3307)=y(3352)*(1-params(285))+params(285)*y(1115)+x(96);
  y(2484)=y(2410);
  T(2186)=params(295)*(y(1126)/y(3318))^(-params(300))*(y(3259)/T(482))^params(300);
  y(3289)=(1-params(295))*(y(3319)/y(3318))^(-params(300))+T(2186)*y(1097);
  y(3250)=y(3246)*y(3289);
  y(2344)=((params(32)+T(4)-1)*y(2484)-params(32)*y(2489)*y(2480))/(y(2480)*(1-y(2489)));
end
