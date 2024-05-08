function [y, T, residual, g1] = dynamic_147(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6441)*y(6489))-(y(6442)*y(6490)+y(6443)*y(6491)+y(6444)*y(6492)+y(6445)*y(6493));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(6441);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
