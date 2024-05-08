function [y, T, residual, g1] = dynamic_60(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2549)*y(2601))-(y(2550)*y(2602)+y(2552)*y(2603)+y(2554)*y(2604)+y(2556)*y(2605));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2549);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
