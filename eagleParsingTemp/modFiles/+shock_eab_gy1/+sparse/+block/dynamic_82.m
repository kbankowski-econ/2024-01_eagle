function [y, T, residual, g1] = dynamic_82(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5915)*y(5968))-(y(5916)*y(5969)+y(5918)*y(5970)+y(5920)*y(5971)+y(5922)*y(5972));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(5915);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
