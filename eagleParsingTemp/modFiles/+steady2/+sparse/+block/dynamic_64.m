function [y, T, residual, g1] = dynamic_64(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2475)*y(2523))-(y(2476)*y(2524)+y(2477)*y(2525)+y(2478)*y(2526)+y(2479)*y(2527));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2475);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
