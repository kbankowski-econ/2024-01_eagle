function [y, T, residual, g1] = static_282(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4172))-(y(4194)*log(y(4028)-y(4028)*params(892))-1/(1+params(943))*y(4096)^(1+params(943))+y(4172)*params(873));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(873);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
