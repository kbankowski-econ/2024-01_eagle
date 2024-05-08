function [y, T, residual, g1] = dynamic_108(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5853)*y(5906))-(y(5854)*y(5907)+y(5856)*y(5908)+y(5858)*y(5909)+y(5860)*y(5910));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(5853);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
