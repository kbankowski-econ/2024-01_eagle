function [y, T, residual, g1] = dynamic_86(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2699)*y(2752))-(y(2700)*y(2753)+y(2702)*y(2754)+y(2704)*y(2755)+y(2706)*y(2756));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2699);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
