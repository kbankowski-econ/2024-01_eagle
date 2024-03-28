function [y, T, residual, g1] = static_214(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(878))-(y(899)*log(y(752)-y(752)*params(157))-1/(1+params(196))*y(816)^(1+params(196))+params(140)*y(878));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(140);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
