function [y, T, residual, g1] = static_390(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3065))-(y(3085)*log(y(2927)-params(802)*y(2927))-1/(1+params(845))*y(2989)^(1+params(845))+params(785)*y(3065));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(785);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
