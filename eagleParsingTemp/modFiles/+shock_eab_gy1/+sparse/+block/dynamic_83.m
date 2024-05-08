function [y, T, residual, g1] = dynamic_83(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(8130)*y(8183))-(y(8131)*y(8184)+y(8133)*y(8185)+y(8135)*y(8186)+y(8137)*y(8187));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(8130);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
