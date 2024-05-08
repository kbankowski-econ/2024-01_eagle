function [y, T, residual, g1] = static_274(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(2708)=params(643)*T(1266)^params(648);
  residual(1)=(y(2722))-((1-params(643))*(y(2755)/y(2754))^(-params(648))+y(2722)*T(2708));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(2708);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
