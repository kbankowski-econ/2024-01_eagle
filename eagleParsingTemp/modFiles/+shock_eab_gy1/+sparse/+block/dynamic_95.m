function [y, T, residual, g1] = dynamic_95(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(9349)*y(9402))-(y(9350)*y(9403)+y(9352)*y(9404)+y(9354)*y(9405)+y(9356)*y(9406));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(9349);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
