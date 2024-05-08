function [y, T, residual, g1] = dynamic_37(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2163)*y(2216))-(y(2164)*y(2217)+y(2166)*y(2218)+y(2168)*y(2219)+y(2170)*y(2220));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2163);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
