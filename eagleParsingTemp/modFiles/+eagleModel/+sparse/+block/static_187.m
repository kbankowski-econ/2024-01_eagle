function [y, T, residual, g1] = static_187(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(5, 1);
  T(59)=params(764)^(-1);
  residual(1)=(y(3286))-(T(59)*y(3257));
  residual(2)=(y(3484))-(y(3483));
  residual(3)=(y(3483))-(y(3257));
  residual(4)=(y(3258))-(y(3257)*y(3257)*y(3483)*y(3484));
  T(60)=y(3286)^4-1;
  residual(5)=(T(60))-(T(60)*params(804)+(1-params(804))*(params(806)*y(3291)^4-1+params(803)*(y(3258)-params(806)))+x(243));
  T(61)=4*y(3286)^3;
if nargout > 3
    g1_v = NaN(12, 1);
g1_v(1)=1;
g1_v(2)=T(61)-params(804)*T(61);
g1_v(3)=1;
g1_v(4)=(-(y(3257)*y(3257)*y(3483)));
g1_v(5)=(-1);
g1_v(6)=1;
g1_v(7)=(-(y(3257)*y(3257)*y(3484)));
g1_v(8)=(-T(59));
g1_v(9)=(-1);
g1_v(10)=(-(y(3484)*y(3483)*(y(3257)+y(3257))));
g1_v(11)=1;
g1_v(12)=(-((1-params(804))*params(803)));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 5, 5);
end
end
