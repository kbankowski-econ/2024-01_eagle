function [y, T, residual, g1] = dynamic_100(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4785)*y(4838))-(y(4786)*y(4839)+y(4788)*y(4840)+y(4790)*y(4841)+y(4792)*y(4842));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4785);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
