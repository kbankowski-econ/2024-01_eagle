function [y, T, residual, g1] = static_106(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3400))-(x(175)*(1-params(653))+y(3400)*params(653)+x(189));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(653);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
