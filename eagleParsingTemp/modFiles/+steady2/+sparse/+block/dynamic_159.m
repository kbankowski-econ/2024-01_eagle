function [y, T, residual, g1] = dynamic_159(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(9254)*y(9302))-(y(9255)*y(9303)+y(9256)*y(9304)+y(9257)*y(9305)+y(9258)*y(9306));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(9254);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
