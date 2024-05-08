function [y, T, residual, g1] = dynamic_82(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2167)*y(2219))-(y(2168)*y(2220)+y(2170)*y(2221)+y(2172)*y(2222)+y(2174)*y(2223));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2167);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
