function [y, T, residual, g1] = static_230(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(2533)=params(500)*T(880)^params(505);
  residual(1)=(y(1631))-((1-params(500))*(y(1663)/y(1662))^(-params(505))+y(1631)*T(2533));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(2533);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
