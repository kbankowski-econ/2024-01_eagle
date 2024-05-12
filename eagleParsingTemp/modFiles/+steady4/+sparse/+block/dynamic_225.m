function [y, T] = dynamic_225(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(13748)=y(13665);
  y(13578)=((params(710)+T(11)-1)*y(13748)-params(710)*x(249)*y(13744))/(y(13744)*(1-x(249)));
  y(10000)=y(10407)*T(2621)*y(16064)/T(2394);
end
