function [y, T, residual, g1] = static_248(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1024))-(y(1045)*log(y(880)-params(214)*y(880))-1/(1+params(262))*y(948)^(1+params(262))+params(195)*y(1024));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(195);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
