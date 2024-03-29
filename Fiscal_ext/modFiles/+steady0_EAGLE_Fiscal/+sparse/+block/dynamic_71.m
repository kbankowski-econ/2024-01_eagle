function [y, T] = dynamic_71(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(2000)=y(2021)*log(y(1850)-params(198)*y(668))-1/(1+params(256))*y(1927)^(1+params(256))+params(180)*y(3182);
end
