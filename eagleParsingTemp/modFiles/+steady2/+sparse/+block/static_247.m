function [y, T, residual, g1] = static_247(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2670)*y(2718))-(y(2671)*y(2719)+y(2672)*y(2720)+y(2673)*y(2721)+y(2674)*y(2722));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2670);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
