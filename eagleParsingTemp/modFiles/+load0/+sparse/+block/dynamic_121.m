function [y, T] = dynamic_121(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(5200)=y(5124);
  y(5037)=((params(402)+T(1361)-1)*y(5200)-params(402)*x(141)*y(5196))/(y(5196)*(1-x(141)));
end
