function [y, T, residual, g1] = static_85(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(5, 1);
  residual(1)=(y(1263))-(y(1262));
  residual(2)=(y(1262))-(y(889));
  T(22)=params(240)^(-1);
  residual(3)=(y(910))-(y(889)*T(22));
  T(23)=y(910)^4-1;
  residual(4)=(T(23))-(T(23)*params(271)+(1-params(271))*(params(273)*y(917)^4-1+params(270)*(y(890)-params(273)))+x(98));
  residual(5)=(y(890))-(y(889)*y(889)*y(1262)*y(1263));
  T(24)=4*y(910)^3;
if nargout > 3
    g1_v = NaN(12, 1);
g1_v(1)=(-1);
g1_v(2)=1;
g1_v(3)=(-(y(889)*y(889)*y(1263)));
g1_v(4)=(-1);
g1_v(5)=(-T(22));
g1_v(6)=(-(y(1263)*y(1262)*(y(889)+y(889))));
g1_v(7)=1;
g1_v(8)=T(24)-params(271)*T(24);
g1_v(9)=(-((1-params(271))*params(270)));
g1_v(10)=1;
g1_v(11)=1;
g1_v(12)=(-(y(889)*y(889)*y(1262)));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 5, 5);
end
end
