function [y, T, residual, g1] = static_350(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(8027))-(y(8048)*log(y(8169)-params(1105)*y(8169))-1/(1+params(1155))*y(7954)^(1+params(1155))+params(1089)*y(8027));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(1089);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
