function [y, T, residual, g1] = dynamic_70(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(7218)*y(7271))-(y(7219)*y(7272)+y(7221)*y(7273)+y(7223)*y(7274)+y(7225)*y(7275));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(7218);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
