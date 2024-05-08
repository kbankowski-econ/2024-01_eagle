function [y, T, residual, g1] = dynamic_84(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(11790)*y(11843))-(y(11791)*y(11844)+y(11793)*y(11845)+y(11795)*y(11846)+y(11797)*y(11847));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(11790);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
