function [y, T, residual, g1] = dynamic_127(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5834)*y(5887))-(y(5835)*y(5888)+y(5837)*y(5889)+y(5839)*y(5890)+y(5841)*y(5891));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(5834);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
