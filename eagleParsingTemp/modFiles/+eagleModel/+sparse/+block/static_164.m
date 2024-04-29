function [y, T, residual, g1] = static_164(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(844)*y(897))-(y(845)*y(898)+y(847)*y(899)+y(849)*y(900)+y(851)*y(901));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(844);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
