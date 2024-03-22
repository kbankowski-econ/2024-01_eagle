function [y, T] = dynamic_51(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  T(1776)=params(137)*(y(469)/y(1756))^(-params(142))*(y(1696)/T(114))^params(142);
  y(1726)=(1-params(137))*(y(1757)/y(1756))^(-params(142))+T(1776)*y(439);
  y(1687)=y(1683)*y(1726);
end
