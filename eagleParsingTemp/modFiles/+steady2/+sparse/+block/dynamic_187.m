function [y, T, residual, g1] = dynamic_187(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(8169)*y(8217))-(y(8170)*y(8218)+y(8171)*y(8219)+y(8172)*y(8220)+y(8173)*y(8221));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(8169);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
