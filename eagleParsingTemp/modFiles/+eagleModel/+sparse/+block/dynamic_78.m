function [y, T, residual, g1] = dynamic_78(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(7619)*y(7672))-(y(7620)*y(7673)+y(7622)*y(7674)+y(7624)*y(7675)+y(7626)*y(7676));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(7619);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
