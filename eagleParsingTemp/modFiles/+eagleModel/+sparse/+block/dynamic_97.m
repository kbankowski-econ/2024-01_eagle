function [y, T] = dynamic_97(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  T(2586)=params(141)*(y(561)/y(2689))^(-params(146))*(y(2629)/T(126))^params(146);
  y(2659)=(1-params(141))*(y(2690)/y(2689))^(-params(146))+T(2586)*y(531);
  y(2620)=y(2616)*y(2659);
end
