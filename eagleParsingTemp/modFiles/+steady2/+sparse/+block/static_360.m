function [y, T, residual, g1] = static_360(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(885))-(y(906)*log(y(747)-y(747)*params(205))-1/(1+params(248))*y(809)^(1+params(248))+y(885)*params(188));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(188);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
