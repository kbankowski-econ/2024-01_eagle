function [y, T, residual, g1] = static_309(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(5, 1);
  residual(1)=(y(8047))-(y(8046));
  residual(2)=(y(8046))-(y(7643));
  residual(3)=(y(7644))-(y(7643)*y(7643)*y(8046)*y(8047));
  T(96)=y(7672)^4-1;
  residual(4)=(T(96))-(T(96)*params(1452)+(1-params(1452))*(params(1454)*y(7677)^4-1+params(1451)*(y(7644)-params(1454)))+x(411));
  T(97)=params(1412)^(-1);
  residual(5)=(y(7672))-(T(97)*y(7643));
  T(98)=4*y(7672)^3;
if nargout > 3
    g1_v = NaN(12, 1);
g1_v(1)=1;
g1_v(2)=(-(y(7643)*y(7643)*y(8046)));
g1_v(3)=(-1);
g1_v(4)=1;
g1_v(5)=(-(y(7643)*y(7643)*y(8047)));
g1_v(6)=(-1);
g1_v(7)=(-(y(8047)*y(8046)*(y(7643)+y(7643))));
g1_v(8)=(-T(97));
g1_v(9)=1;
g1_v(10)=(-((1-params(1452))*params(1451)));
g1_v(11)=T(98)-params(1452)*T(98);
g1_v(12)=1;
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 5, 5);
end
end
