function [y, T, residual, g1] = static_443(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(7729)=params(1027)*T(2200)^params(1032);
  residual(1)=(y(3817))-((1-params(1027))*(y(3849)/y(3848))^(-params(1032))+y(3817)*T(7729));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(7729);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
