function [y, T, residual, g1] = static_297(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3144)*y(3197))-(y(3145)*y(3198)+y(3147)*y(3199)+y(3149)*y(3200)+y(3151)*y(3201));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3144);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
