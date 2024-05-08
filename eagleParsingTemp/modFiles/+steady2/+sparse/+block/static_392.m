function [y, T, residual, g1] = static_392(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3064))-(y(3085)*log(y(2926)-y(2926)*params(802))-1/(1+params(845))*y(2988)^(1+params(845))+y(3064)*params(785));
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
