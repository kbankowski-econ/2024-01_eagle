function [y, T] = dynamic_106(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(2905)=y(2831);
  y(2744)=((params(171)+T(2)-1)*y(2905)-params(171)*x(60)*y(2901))/(y(2901)*(1-x(60)));
  y(2500)=y(2494)*y(2506)/y(544);
end
