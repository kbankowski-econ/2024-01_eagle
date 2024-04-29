function [y, T, residual, g1] = static_206(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1274))-(y(1296)*log(y(1130)-y(1130)*params(304))-1/(1+params(352))*y(1198)^(1+params(352))+y(1274)*params(285));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(285);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
