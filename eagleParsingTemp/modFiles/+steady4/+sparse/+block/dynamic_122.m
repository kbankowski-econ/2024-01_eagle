function [y, T, residual, g1] = dynamic_122(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6629)*y(6682))-(y(6630)*y(6683)+y(6632)*y(6684)+y(6634)*y(6685)+y(6636)*y(6686));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(6629);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
