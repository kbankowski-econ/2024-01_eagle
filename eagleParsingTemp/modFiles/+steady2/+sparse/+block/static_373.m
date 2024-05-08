function [y, T, residual, g1] = static_373(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5063))-(y(5120)*(1-params(1360))+y(5063)*params(1360)+x(293));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(1360);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
