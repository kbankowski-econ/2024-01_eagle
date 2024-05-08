function [y, T, residual, g1] = static_237(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2951))-(y(2972)*log(y(2807)-params(686)*y(2807))-1/(1+params(737))*y(2875)^(1+params(737))+params(667)*y(2951));
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
