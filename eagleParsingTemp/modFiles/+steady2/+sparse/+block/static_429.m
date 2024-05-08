function [y, T, residual, g1] = static_429(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3211))-(y(3231)*log(y(3073)-params(830)*y(3073))-1/(1+params(873))*y(3135)^(1+params(873))+params(813)*y(3211));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(813);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
