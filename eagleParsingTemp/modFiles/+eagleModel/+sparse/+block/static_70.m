function [y, T, residual, g1] = static_70(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(5, 1);
  residual(1)=(y(932))-(y(931));
  residual(2)=(y(931))-(y(800));
  residual(3)=(y(800))-(y(801)/(y(800)*y(931)*y(932)));
  T(21)=y(821)^4-1;
  residual(4)=(y(801))-(params(270)+(1+(T(21)-T(21)*params(268)-params(266)*(y(865)-1)-x(99))/(1-params(268))-params(270)*y(826)^4)/params(267));
  T(22)=params(240)^(-1);
  residual(5)=(y(821))-(y(800)*T(22));
  T(23)=4*y(821)^3;
if nargout > 3
    g1_v = NaN(12, 1);
g1_v(1)=1;
g1_v(2)=(-((-(y(801)*y(800)*y(931)))/(y(800)*y(931)*y(932)*y(800)*y(931)*y(932))));
g1_v(3)=(-1);
g1_v(4)=1;
g1_v(5)=(-((-(y(801)*y(800)*y(932)))/(y(800)*y(931)*y(932)*y(800)*y(931)*y(932))));
g1_v(6)=(-(1/(y(800)*y(931)*y(932))));
g1_v(7)=1;
g1_v(8)=(-((T(23)-params(268)*T(23))/(1-params(268))/params(267)));
g1_v(9)=1;
g1_v(10)=(-1);
g1_v(11)=1-(-(y(801)*y(931)*y(932)))/(y(800)*y(931)*y(932)*y(800)*y(931)*y(932));
g1_v(12)=(-T(22));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 5, 5);
end
end
