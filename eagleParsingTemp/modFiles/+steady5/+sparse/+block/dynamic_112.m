function [y, T, residual, g1] = dynamic_112(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5821)*y(5873))-(y(5822)*y(5874)+y(5824)*y(5875)+y(5826)*y(5876)+y(5828)*y(5877));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(5821);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
