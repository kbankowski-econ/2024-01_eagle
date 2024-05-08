function [y, T, residual, g1] = static_236(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2675))-(y(2721)*(1-params(524))+y(2675)*params(524)+x(185));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(524);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
