function [y, T, residual, g1] = dynamic_112(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5456)*y(5509))-(y(5457)*y(5510)+y(5459)*y(5511)+y(5461)*y(5512)+y(5463)*y(5513));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(5456);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
