function [y, T, residual, g1] = dynamic_95(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3368)*y(3421))-(y(3369)*y(3422)+y(3371)*y(3423)+y(3373)*y(3424)+y(3375)*y(3425));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3368);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
