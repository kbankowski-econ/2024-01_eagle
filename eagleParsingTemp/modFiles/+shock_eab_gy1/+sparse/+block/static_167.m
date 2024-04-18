function [y, T, residual, g1] = static_167(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(521)*y(574))-(y(522)*y(575)+y(524)*y(576)+y(526)*y(577)+y(528)*y(578));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(521);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
