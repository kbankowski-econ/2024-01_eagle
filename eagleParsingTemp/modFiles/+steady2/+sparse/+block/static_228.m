function [y, T, residual, g1] = static_228(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(238)*y(286))-(y(239)*y(287)+y(240)*y(288)+y(241)*y(289)+y(242)*y(290));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(238);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
