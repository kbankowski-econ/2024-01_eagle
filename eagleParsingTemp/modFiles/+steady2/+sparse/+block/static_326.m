function [y, T, residual, g1] = static_326(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5898)*y(5946))-(y(5899)*y(5947)+y(5900)*y(5948)+y(5901)*y(5949)+y(5902)*y(5950));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(5898);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
