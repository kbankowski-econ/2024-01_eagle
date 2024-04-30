function [y, T, residual, g1] = static_108(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1018))-(y(1040)*log(y(1073)-y(1073)*params(259))-1/(1+params(308))*y(945)^(1+params(308))+y(1018)*params(243));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(243);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
