function [y, T, residual, g1] = dynamic_141(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(8301)*y(8354))-(y(8302)*y(8355)+y(8304)*y(8356)+y(8306)*y(8357)+y(8308)*y(8358));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(8301);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
