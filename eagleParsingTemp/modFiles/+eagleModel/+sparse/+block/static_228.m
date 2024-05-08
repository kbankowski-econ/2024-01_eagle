function [y, T, residual, g1] = static_228(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(824)*y(3174))-(y(206)*(-params(70))-params(164)*y(577)-params(258)*y(948)-params(352)*y(1319)-params(446)*y(1690)-params(540)*y(2061)-params(634)*y(2432)-params(731)*y(2803));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(824);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
