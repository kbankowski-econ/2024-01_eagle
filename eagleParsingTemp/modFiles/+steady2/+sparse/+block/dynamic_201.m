function [y, T, residual, g1] = dynamic_201(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(13748)*y(13796))-(y(13749)*y(13797)+y(13750)*y(13798)+y(13751)*y(13799)+y(13752)*y(13800));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(13748);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
