function [y, T, residual, g1] = static_211(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2145))-(y(2167)*log(y(2945)-y(2945)*params(412))-1/(1+params(460))*y(2069)^(1+params(460))+y(2145)*params(393));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(393);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
