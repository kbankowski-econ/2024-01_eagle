function [y, T, residual, g1] = static_294(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(343)*y(396))-(y(344)*y(397)+y(346)*y(398)+y(348)*y(399)+y(350)*y(400));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(343);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
