function [y, T, residual, g1] = dynamic_76(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5638)*y(5691))-(y(5639)*y(5692)+y(5641)*y(5693)+y(5643)*y(5694)+y(5645)*y(5695));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(5638);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
