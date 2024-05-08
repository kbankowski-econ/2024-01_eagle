function [y, T, residual, g1] = static_311(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5433)*y(5481))-(y(5434)*y(5482)+y(5435)*y(5483)+y(5436)*y(5484)+y(5437)*y(5485));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(5433);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
