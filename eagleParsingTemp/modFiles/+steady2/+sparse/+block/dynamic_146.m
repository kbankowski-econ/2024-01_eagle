function [y, T] = dynamic_146(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(3737)=y(3711);
  y(3031)=y(2927);
  y(3035)=y(2954);
  y(2872)=((params(44)+T(3)-1)*y(3035)-params(44)*x(6)*y(3031))/(y(3031)*(1-x(6)));
end
