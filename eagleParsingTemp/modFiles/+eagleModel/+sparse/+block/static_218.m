function [y, T, residual, g1] = static_218(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(5, 1);
  residual(1)=(y(5498))-(y(5497));
  residual(2)=(y(5497))-(y(4792));
  T(50)=params(979)^(-1);
  residual(3)=(y(4821))-(T(50)*y(4792));
  T(51)=y(4821)^4-1;
  residual(4)=(T(51))-(T(51)*params(1022)+(1-params(1022))*(params(1024)*y(4828)^4-1+params(1021)*(y(4793)-params(1024)))+x(298));
  residual(5)=(y(4793))-(y(4792)*y(4792)*y(5497)*y(5498));
  T(52)=4*y(4821)^3;
if nargout > 3
    g1_v = NaN(12, 1);
g1_v(1)=(-1);
g1_v(2)=1;
g1_v(3)=(-(y(4792)*y(4792)*y(5498)));
g1_v(4)=(-1);
g1_v(5)=(-T(50));
g1_v(6)=(-(y(5498)*y(5497)*(y(4792)+y(4792))));
g1_v(7)=1;
g1_v(8)=T(52)-params(1022)*T(52);
g1_v(9)=(-((1-params(1022))*params(1021)));
g1_v(10)=1;
g1_v(11)=1;
g1_v(12)=(-(y(4792)*y(4792)*y(5497)));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 5, 5);
end
end
