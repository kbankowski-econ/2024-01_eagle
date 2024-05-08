function [y, T, residual, g1] = dynamic_62(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5649)*y(5702))-(y(5650)*y(5703)+y(5652)*y(5704)+y(5654)*y(5705)+y(5656)*y(5706));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(5649);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
