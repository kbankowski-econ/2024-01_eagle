function [y, T, residual, g1] = static_223(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4091))-(y(4113)*log(y(3951)-y(3951)*params(720))-1/(1+params(770))*y(4018)^(1+params(770))+y(4091)*params(704));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(704);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
