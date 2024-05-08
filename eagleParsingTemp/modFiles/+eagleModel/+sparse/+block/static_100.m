function [y, T, residual, g1] = static_100(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(5, 1);
  residual(1)=(y(1452))-(y(1451));
  T(32)=params(372)^(-1);
  residual(2)=(y(1322))-(T(32)*y(1293));
  residual(3)=(y(1451))-(y(1293));
  T(33)=y(1322)^4-1;
  residual(4)=(T(33))-(T(33)*params(412)+(1-params(412))*(params(414)*y(1327)^4-1+params(411)*(y(1294)-params(414)))+x(131));
  residual(5)=(y(1294))-(y(1293)*y(1293)*y(1451)*y(1452));
  T(34)=4*y(1322)^3;
if nargout > 3
    g1_v = NaN(12, 1);
g1_v(1)=1;
g1_v(2)=(-(y(1293)*y(1293)*y(1451)));
g1_v(3)=1;
g1_v(4)=T(34)-params(412)*T(34);
g1_v(5)=(-1);
g1_v(6)=1;
g1_v(7)=(-(y(1293)*y(1293)*y(1452)));
g1_v(8)=(-((1-params(412))*params(411)));
g1_v(9)=1;
g1_v(10)=(-T(32));
g1_v(11)=(-1);
g1_v(12)=(-(y(1452)*y(1451)*(y(1293)+y(1293))));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 5, 5);
end
end
