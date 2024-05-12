function [y, T, residual, g1] = static_328(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(7085)*y(7138))-(y(7086)*y(7139)+y(7088)*y(7140)+y(7090)*y(7141)+y(7092)*y(7142));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(7085);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
