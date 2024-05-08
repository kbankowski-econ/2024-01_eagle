function [y, T, residual, g1] = static_234(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(320))-(y(341)*log(y(182)-y(182)*params(60))-1/(1+params(103))*y(244)^(1+params(103))+y(320)*params(43));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(43);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
