function [y, T, residual, g1] = static_93(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(640)=params(305)*(y(958)/T(106))^params(310);
  residual(1)=(y(994))-((1-params(305))*(y(1026)/y(1025))^(-params(310))+y(994)*T(640));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(640);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
