function [y, T, residual, g1] = static_363(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5875))-(y(5896)*log(y(6957)-params(1117)*y(6957))-1/(1+params(1165))*y(5799)^(1+params(1165))+params(1098)*y(5875));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(1098);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
