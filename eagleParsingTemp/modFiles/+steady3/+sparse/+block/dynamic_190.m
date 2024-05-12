function [y, T, residual, g1] = dynamic_190(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(10892)*y(10945))-(y(10893)*y(10946)+y(10895)*y(10947)+y(10897)*y(10948)+y(10899)*y(10949));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(10892);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
