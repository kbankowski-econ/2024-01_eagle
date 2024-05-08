function [y, T, residual, g1] = static_239(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3069))-(y(3091)*log(y(3544)-y(3544)*params(567))-1/(1+params(617))*y(2993)^(1+params(617))+y(3069)*params(548));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(548);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
