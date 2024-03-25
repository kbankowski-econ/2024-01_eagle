function [y, T, residual, g1] = static_114(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(897)*y(843))-(y(1032)*params(349)*y(1050)*y(811)/params(279)+y(537)*params(205)*y(555)*y(810)/params(279)+y(43)*params(63)*y(61)*y(808)/params(279)+y(290)*params(134)*y(308)*y(809)/params(279));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(843);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
