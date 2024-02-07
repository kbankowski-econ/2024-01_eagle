function [y, T, residual, g1] = static_72(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(5, 1);
  residual(1)=(y(932))-(y(931));
  residual(2)=(y(931))-(y(800));
  residual(3)=(y(801))-(y(800)*y(800)*y(931)*y(932));
  T(21)=y(821)^4-1;
  residual(4)=(T(21))-(T(21)*params(268)+(1-params(268))*(params(270)*y(826)^4-1+params(267)*(y(801)-params(270)))+x(99));
  T(22)=params(240)^(-1);
  residual(5)=(y(821))-(y(800)*T(22));
  T(23)=4*y(821)^3;
if nargout > 3
    g1_v = NaN(12, 1);
g1_v(1)=1;
g1_v(2)=(-(y(800)*y(800)*y(931)));
g1_v(3)=(-1);
g1_v(4)=1;
g1_v(5)=(-(y(800)*y(800)*y(932)));
g1_v(6)=(-1);
g1_v(7)=(-(y(932)*y(931)*(y(800)+y(800))));
g1_v(8)=(-T(22));
g1_v(9)=1;
g1_v(10)=(-((1-params(268))*params(267)));
g1_v(11)=T(23)-params(268)*T(23);
g1_v(12)=1;
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 5, 5);
end
end
