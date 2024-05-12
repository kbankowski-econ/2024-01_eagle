function [y, T, residual, g1] = static_323(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(391)*y(443))-(y(392)*y(444)+y(394)*y(445)+y(396)*y(446)+y(398)*y(447));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(391);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
