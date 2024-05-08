function [y, T, residual, g1] = static_74(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1818))-(x(119)*(1-params(435))+y(1818)*params(435)+x(133));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(435);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
