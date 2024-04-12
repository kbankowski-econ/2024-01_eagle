function [y, T, residual, g1] = static_209(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1752))-(y(1774)*log(y(2511)-y(2511)*params(396))-1/(1+params(444))*y(1676)^(1+params(444))+y(1752)*params(377));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(377);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
