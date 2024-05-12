function [y, T, residual, g1] = dynamic_174(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(13582)*y(13635))-(y(13583)*y(13636)+y(13585)*y(13637)+y(13587)*y(13638)+y(13589)*y(13639));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(13582);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
