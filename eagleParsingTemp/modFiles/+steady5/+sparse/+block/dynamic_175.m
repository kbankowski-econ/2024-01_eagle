function [y, T, residual, g1] = dynamic_175(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(13597)*y(13649))-(y(13598)*y(13650)+y(13600)*y(13651)+y(13602)*y(13652)+y(13604)*y(13653));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(13597);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
