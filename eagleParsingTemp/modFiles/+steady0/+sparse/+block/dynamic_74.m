function [y, T] = dynamic_74(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(2949)=y(2879);
  y(2792)=((params(326)+T(662)-1)*y(2949)-params(326)*x(114)*y(2945))/(y(2945)*(1-x(114)));
  y(1760)=y(1802)*(1-params(62))+params(62)*y(251)+x(23);
end
