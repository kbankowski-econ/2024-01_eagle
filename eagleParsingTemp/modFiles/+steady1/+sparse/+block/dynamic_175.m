function [y, T, residual, g1] = dynamic_175(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(13522)*y(13575))-(y(13523)*y(13576)+y(13525)*y(13577)+y(13527)*y(13578)+y(13529)*y(13579));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(13522);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
