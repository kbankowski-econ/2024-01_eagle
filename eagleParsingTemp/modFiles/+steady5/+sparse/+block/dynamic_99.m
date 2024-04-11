function [y, T, residual, g1] = dynamic_99(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4792)*y(4844))-(y(4793)*y(4845)+y(4795)*y(4846)+y(4797)*y(4847)+y(4799)*y(4848));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4792);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
