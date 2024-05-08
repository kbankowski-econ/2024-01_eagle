function [y, T, residual, g1] = static_142(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(455)*y(503))-(y(456)*y(504)+y(457)*y(505)+y(458)*y(506)+y(459)*y(507));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(455);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
