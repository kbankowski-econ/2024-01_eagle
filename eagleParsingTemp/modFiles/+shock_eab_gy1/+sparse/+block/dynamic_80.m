function [y, T, residual, g1] = dynamic_80(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(9016)*y(9069))-(y(9017)*y(9070)+y(9019)*y(9071)+y(9021)*y(9072)+y(9023)*y(9073));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(9016);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
