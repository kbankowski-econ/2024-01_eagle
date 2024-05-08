function [y, T] = dynamic_215(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(9118)=y(9032);
  y(8950)=((params(883)+T(9)-1)*y(9118)-params(883)*x(195)*y(9114))/(y(9114)*(1-x(195)));
  y(7245)=y(7398)*y(7333)-y(7349)*y(7287)-y(7301)*(1+y(7362))*y(7382);
end
