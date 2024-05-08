function [y, T, residual, g1] = static_313(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4856))-(y(4877)*log(y(5389)-params(998)*y(5389))-1/(1+params(1049))*y(4780)^(1+params(1049))+params(979)*y(4856));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(979);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
