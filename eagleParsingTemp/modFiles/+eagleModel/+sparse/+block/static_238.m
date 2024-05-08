function [y, T, residual, g1] = static_238(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2950))-(y(2972)*log(y(2806)-y(2806)*params(686))-1/(1+params(737))*y(2874)^(1+params(737))+y(2950)*params(667));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(667);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
