function [y, T, residual, g1] = dynamic_112(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(477)*y(4219))-(y(2383)*(-params(61))-params(130)*y(2689)-params(199)*y(2995)-params(268)*y(3301));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(477);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
