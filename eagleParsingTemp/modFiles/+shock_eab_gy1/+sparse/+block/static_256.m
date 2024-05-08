function [y, T, residual, g1] = static_256(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(5, 1);
  residual(1)=(y(7174))-(y(7173));
  residual(2)=(y(7173))-(y(6792));
  residual(3)=(y(6793))-(y(6792)*y(6792)*y(7173)*y(7174));
  T(61)=y(6821)^4-1;
  residual(4)=(T(61))-(T(61)*params(1339)+(1-params(1339))*(params(1341)*y(6826)^4-1+params(1338)*(y(6793)-params(1341)))+x(383));
  T(62)=params(1299)^(-1);
  residual(5)=(y(6821))-(T(62)*y(6792));
  T(63)=4*y(6821)^3;
if nargout > 3
    g1_v = NaN(12, 1);
g1_v(1)=(-1);
g1_v(2)=1;
g1_v(3)=(-(y(6792)*y(6792)*y(7174)));
g1_v(4)=(-1);
g1_v(5)=(-(y(7174)*y(7173)*(y(6792)+y(6792))));
g1_v(6)=(-T(62));
g1_v(7)=1;
g1_v(8)=(-(y(6792)*y(6792)*y(7173)));
g1_v(9)=1;
g1_v(10)=(-((1-params(1339))*params(1338)));
g1_v(11)=T(63)-params(1339)*T(63);
g1_v(12)=1;
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 5, 5);
end
end
