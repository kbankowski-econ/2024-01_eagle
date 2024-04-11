function [y, T, residual, g1] = static_208(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1708))-(y(1728)*log(y(1570)-params(440)*y(1570))-1/(1+params(483))*y(1632)^(1+params(483))+params(423)*y(1708));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(423);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
