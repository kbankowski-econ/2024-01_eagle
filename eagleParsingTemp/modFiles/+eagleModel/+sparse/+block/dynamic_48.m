function [y, T] = dynamic_48(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(1990)=y(2011)*log(y(1868)-params(180)*y(581))-1/(1+params(217))*y(1928)^(1+params(217))+params(163)*y(3277);
  y(1989)=y(2011)*log(y(1867)-params(180)*y(580))-1/(1+params(217))*y(1927)^(1+params(217))+params(163)*y(3276);
end
