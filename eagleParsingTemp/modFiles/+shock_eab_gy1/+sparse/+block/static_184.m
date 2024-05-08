function [y, T, residual, g1] = static_184(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(5, 1);
  residual(1)=(y(4162))-(y(4161));
  residual(2)=(y(4161))-(y(3868));
  residual(3)=(y(3869))-(y(3868)*y(3868)*y(4161)*y(4162));
  T(45)=y(3897)^4-1;
  residual(4)=(T(45))-(T(45)*params(907)+(1-params(907))*(params(909)*y(3902)^4-1+params(906)*(y(3869)-params(909)))+x(271));
  T(46)=params(867)^(-1);
  residual(5)=(y(3897))-(T(46)*y(3868));
  T(47)=4*y(3897)^3;
if nargout > 3
    g1_v = NaN(12, 1);
g1_v(1)=(-1);
g1_v(2)=1;
g1_v(3)=(-(y(3868)*y(3868)*y(4162)));
g1_v(4)=(-1);
g1_v(5)=(-(y(4162)*y(4161)*(y(3868)+y(3868))));
g1_v(6)=(-T(46));
g1_v(7)=1;
g1_v(8)=(-(y(3868)*y(3868)*y(4161)));
g1_v(9)=1;
g1_v(10)=(-((1-params(907))*params(906)));
g1_v(11)=T(47)-params(907)*T(47);
g1_v(12)=1;
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 5, 5);
end
end
