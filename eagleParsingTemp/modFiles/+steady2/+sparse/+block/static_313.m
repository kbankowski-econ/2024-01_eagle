function [y, T, residual, g1] = static_313(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3573)*y(3621))-(y(3574)*y(3622)+y(3575)*y(3623)+y(3576)*y(3624)+y(3577)*y(3625));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3573);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
