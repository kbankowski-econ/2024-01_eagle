function [y, T, residual, g1] = static_235(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1204))-(y(1225)*log(y(4166)-params(182)*y(4166))-1/(1+params(229))*y(1128)^(1+params(229))+params(163)*y(1204));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(163);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
