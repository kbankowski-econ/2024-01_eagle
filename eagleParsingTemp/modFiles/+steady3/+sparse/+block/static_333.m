function [y, T, residual, g1] = static_333(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(987))-(y(1009)*log(y(7225)-y(7225)*params(104))-1/(1+params(152))*y(911)^(1+params(152))+y(987)*params(85));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(85);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
