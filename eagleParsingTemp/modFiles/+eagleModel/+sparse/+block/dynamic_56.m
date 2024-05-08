function [y, T, residual, g1] = dynamic_56(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3143)*y(3196))-(y(3144)*y(3197)+y(3146)*y(3198)+y(3148)*y(3199)+y(3150)*y(3200));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3143);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
