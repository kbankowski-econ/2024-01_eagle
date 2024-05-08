function [y, T, residual, g1] = dynamic_151(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6097)*y(6150))-(y(6098)*y(6151)+y(6100)*y(6152)+y(6102)*y(6153)+y(6104)*y(6154));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(6097);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
