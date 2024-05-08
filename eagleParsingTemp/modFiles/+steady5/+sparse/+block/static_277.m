function [y, T, residual, g1] = static_277(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3271)*y(3323))-(y(3272)*y(3324)+y(3274)*y(3325)+y(3276)*y(3326)+y(3278)*y(3327));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3271);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
