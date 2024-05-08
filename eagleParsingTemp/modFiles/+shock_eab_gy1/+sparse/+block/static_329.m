function [y, T, residual, g1] = static_329(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1311))-(y(1333)*log(y(5356)-y(5356)*params(222))-1/(1+params(270))*y(1235)^(1+params(270))+y(1311)*params(203));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(203);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
