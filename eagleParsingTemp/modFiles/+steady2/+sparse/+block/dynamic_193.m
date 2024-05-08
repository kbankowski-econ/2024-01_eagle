function [y, T, residual, g1] = dynamic_193(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(8163)*y(8211))-(y(8164)*y(8212)+y(8165)*y(8213)+y(8166)*y(8214)+y(8167)*y(8215));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(8163);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
