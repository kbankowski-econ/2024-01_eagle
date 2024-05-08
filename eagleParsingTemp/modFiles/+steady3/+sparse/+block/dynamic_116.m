function [y, T, residual, g1] = dynamic_116(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(7063)*y(7116))-(y(7064)*y(7117)+y(7066)*y(7118)+y(7068)*y(7119)+y(7070)*y(7120));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(7063);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
