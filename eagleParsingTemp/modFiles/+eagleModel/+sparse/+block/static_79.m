function [y, T, residual, g1] = static_79(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(5, 1);
  residual(1)=(y(1050))-(y(1049));
  residual(2)=(y(1049))-(y(672));
  T(24)=params(187)^(-1);
  residual(3)=(y(701))-(T(24)*y(672));
  T(25)=y(701)^4-1;
  residual(4)=(T(25))-(T(25)*params(230)+(1-params(230))*(params(232)*y(708)^4-1+params(229)*(y(673)-params(232)))+x(74));
  residual(5)=(y(673))-(y(672)*y(672)*y(1049)*y(1050));
  T(26)=4*y(701)^3;
if nargout > 3
    g1_v = NaN(12, 1);
g1_v(1)=(-1);
g1_v(2)=1;
g1_v(3)=(-(y(672)*y(672)*y(1050)));
g1_v(4)=(-1);
g1_v(5)=(-T(24));
g1_v(6)=(-(y(1050)*y(1049)*(y(672)+y(672))));
g1_v(7)=1;
g1_v(8)=T(26)-params(230)*T(26);
g1_v(9)=(-((1-params(230))*params(229)));
g1_v(10)=1;
g1_v(11)=1;
g1_v(12)=(-(y(672)*y(672)*y(1049)));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 5, 5);
end
end
