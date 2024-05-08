function [y, T, residual, g1] = static_270(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(5, 1);
  residual(1)=(y(6284))-(y(6283));
  residual(2)=(y(6283))-(y(5989));
  T(85)=params(1188)^(-1);
  residual(3)=(y(6018))-(T(85)*y(5989));
  residual(4)=(y(5990))-(y(5989)*y(5989)*y(6283)*y(6284));
  T(86)=y(6018)^4-1;
  residual(5)=(T(86))-(T(86)*params(1228)+(1-params(1228))*(params(1230)*y(6023)^4-1+params(1227)*(y(5990)-params(1230)))+x(355));
  T(87)=4*y(6018)^3;
if nargout > 3
    g1_v = NaN(12, 1);
g1_v(1)=1;
g1_v(2)=(-(y(5989)*y(5989)*y(6283)));
g1_v(3)=(-1);
g1_v(4)=1;
g1_v(5)=(-(y(5989)*y(5989)*y(6284)));
g1_v(6)=1;
g1_v(7)=T(87)-params(1228)*T(87);
g1_v(8)=(-1);
g1_v(9)=(-T(85));
g1_v(10)=(-(y(6284)*y(6283)*(y(5989)+y(5989))));
g1_v(11)=1;
g1_v(12)=(-((1-params(1228))*params(1227)));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 5, 5);
end
end
