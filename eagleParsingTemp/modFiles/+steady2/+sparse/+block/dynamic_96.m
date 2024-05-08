function [y, T, residual, g1] = dynamic_96(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3279)*y(3327))-(y(3280)*y(3328)+y(3281)*y(3329)+y(3282)*y(3330)+y(3283)*y(3331));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3279);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
