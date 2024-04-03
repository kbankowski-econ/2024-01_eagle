function [y, T, residual, g1] = static_206(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1420))-(y(1440)*log(y(1300)-params(342)*y(1300))-1/(1+params(378))*y(1358)^(1+params(378))+params(327)*y(1420));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(327);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
