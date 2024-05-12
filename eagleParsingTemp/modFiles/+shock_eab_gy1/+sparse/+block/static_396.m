function [y, T, residual, g1] = static_396(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6163))-(y(6184)*log(y(7811)-params(1128)*y(7811))-1/(1+params(1176))*y(6087)^(1+params(1176))+params(1109)*y(6163));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(1109);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
