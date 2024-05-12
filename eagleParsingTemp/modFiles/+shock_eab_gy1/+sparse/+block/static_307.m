function [y, T, residual, g1] = static_307(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(5, 1);
  T(93)=params(1309)^(-1);
  residual(1)=(y(7158))-(T(93)*y(7129));
  residual(2)=(y(8033))-(y(8032));
  residual(3)=(y(8032))-(y(7129));
  T(94)=y(7158)^4-1;
  residual(4)=(T(94))-(T(94)*params(1352)+(1-params(1352))*(params(1354)*y(7165)^4-1+params(1351)*(y(7130)-params(1354)))+x(382));
  residual(5)=(y(7130))-(y(7129)*y(7129)*y(8032)*y(8033));
  T(95)=4*y(7158)^3;
if nargout > 3
    g1_v = NaN(12, 1);
g1_v(1)=1;
g1_v(2)=T(95)-params(1352)*T(95);
g1_v(3)=(-1);
g1_v(4)=1;
g1_v(5)=(-(y(7129)*y(7129)*y(8033)));
g1_v(6)=(-T(93));
g1_v(7)=(-1);
g1_v(8)=(-(y(8033)*y(8032)*(y(7129)+y(7129))));
g1_v(9)=(-((1-params(1352))*params(1351)));
g1_v(10)=1;
g1_v(11)=1;
g1_v(12)=(-(y(7129)*y(7129)*y(8032)));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 5, 5);
end
end
