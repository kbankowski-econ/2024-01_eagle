function [y, T, residual, g1] = static_279(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2747))-(y(2769)*log(y(2603)-y(2603)*params(598))-1/(1+params(646))*y(2671)^(1+params(646))+y(2747)*params(579));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(579);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
