function [y, T, residual, g1] = static_228(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(5, 1);
  residual(1)=(y(4843))-(y(4842));
  residual(2)=(y(4842))-(y(4527));
  residual(3)=(y(4528))-(y(4527)*y(4527)*y(4842)*y(4843));
  T(72)=y(4556)^4-1;
  residual(4)=(T(72))-(T(72)*params(1012)+(1-params(1012))*(params(1014)*y(4561)^4-1+params(1011)*(y(4528)-params(1014)))+x(299));
  T(73)=params(972)^(-1);
  residual(5)=(y(4556))-(T(73)*y(4527));
  T(74)=4*y(4556)^3;
if nargout > 3
    g1_v = NaN(12, 1);
g1_v(1)=(-1);
g1_v(2)=1;
g1_v(3)=(-(y(4527)*y(4527)*y(4843)));
g1_v(4)=(-1);
g1_v(5)=(-(y(4843)*y(4842)*(y(4527)+y(4527))));
g1_v(6)=(-T(73));
g1_v(7)=1;
g1_v(8)=(-(y(4527)*y(4527)*y(4842)));
g1_v(9)=1;
g1_v(10)=(-((1-params(1012))*params(1011)));
g1_v(11)=T(74)-params(1012)*T(74);
g1_v(12)=1;
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 5, 5);
end
end
