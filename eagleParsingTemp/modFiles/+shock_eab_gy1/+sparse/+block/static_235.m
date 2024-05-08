function [y, T, residual, g1] = static_235(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3929))-(y(3950)*log(y(4013)-params(883)*y(4013))-1/(1+params(933))*y(3856)^(1+params(933))+params(867)*y(3929));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(867);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
