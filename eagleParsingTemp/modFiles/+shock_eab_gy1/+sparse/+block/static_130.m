function [y, T, residual, g1] = static_130(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(5, 1);
  residual(1)=(y(2407))-(y(2406));
  residual(2)=(y(2406))-(y(2179));
  T(33)=params(564)^(-1);
  residual(3)=(y(2208))-(T(33)*y(2179));
  residual(4)=(y(2180))-(y(2179)*y(2179)*y(2406)*y(2407));
  T(34)=y(2208)^4-1;
  residual(5)=(T(34))-(T(34)*params(604)+(1-params(604))*(params(606)*y(2213)^4-1+params(603)*(y(2180)-params(606)))+x(187));
  T(35)=4*y(2208)^3;
if nargout > 3
    g1_v = NaN(12, 1);
g1_v(1)=(-1);
g1_v(2)=1;
g1_v(3)=(-(y(2179)*y(2179)*y(2407)));
g1_v(4)=(-1);
g1_v(5)=(-T(33));
g1_v(6)=(-(y(2407)*y(2406)*(y(2179)+y(2179))));
g1_v(7)=1;
g1_v(8)=T(35)-params(604)*T(35);
g1_v(9)=1;
g1_v(10)=(-(y(2179)*y(2179)*y(2406)));
g1_v(11)=1;
g1_v(12)=(-((1-params(604))*params(603)));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 5, 5);
end
end
