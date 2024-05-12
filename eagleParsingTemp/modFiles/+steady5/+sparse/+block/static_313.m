function [y, T, residual, g1] = static_313(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5233)*y(5285))-(y(5234)*y(5286)+y(5236)*y(5287)+y(5238)*y(5288)+y(5240)*y(5289));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(5233);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
