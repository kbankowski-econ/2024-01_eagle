function [y, T, residual, g1] = static_367(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(7703))-(y(7725)*log(y(7822)-y(7822)*params(1428))-1/(1+params(1478))*y(7630)^(1+params(1478))+y(7703)*params(1412));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(1412);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
