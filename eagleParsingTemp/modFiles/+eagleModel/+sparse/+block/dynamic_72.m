function [y, T, residual, g1] = dynamic_72(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(8457)*y(8510))-(y(8458)*y(8511)+y(8460)*y(8512)+y(8462)*y(8513)+y(8464)*y(8514));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(8457);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
