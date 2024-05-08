function [y, T, residual, g1] = dynamic_45(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2404)*y(2457))-(y(2405)*y(2458)+y(2407)*y(2459)+y(2409)*y(2460)+y(2411)*y(2461));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2404);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
