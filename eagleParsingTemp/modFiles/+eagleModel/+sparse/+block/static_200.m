function [y, T, residual, g1] = static_200(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(5, 1);
  residual(1)=(y(4774))-(y(4773));
  residual(2)=(y(4773))-(y(4109));
  T(46)=params(873)^(-1);
  residual(3)=(y(4138))-(T(46)*y(4109));
  T(47)=y(4138)^4-1;
  residual(4)=(T(47))-(T(47)*params(916)+(1-params(916))*(params(918)*y(4145)^4-1+params(915)*(y(4110)-params(918)))+x(270));
  residual(5)=(y(4110))-(y(4109)*y(4109)*y(4773)*y(4774));
  T(48)=4*y(4138)^3;
if nargout > 3
    g1_v = NaN(12, 1);
g1_v(1)=(-1);
g1_v(2)=1;
g1_v(3)=(-(y(4109)*y(4109)*y(4774)));
g1_v(4)=(-1);
g1_v(5)=(-T(46));
g1_v(6)=(-(y(4774)*y(4773)*(y(4109)+y(4109))));
g1_v(7)=1;
g1_v(8)=T(48)-params(916)*T(48);
g1_v(9)=(-((1-params(916))*params(915)));
g1_v(10)=1;
g1_v(11)=1;
g1_v(12)=(-(y(4109)*y(4109)*y(4773)));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 5, 5);
end
end
