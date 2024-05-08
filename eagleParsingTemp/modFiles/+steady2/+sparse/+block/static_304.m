function [y, T, residual, g1] = static_304(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5625)*y(5673))-(y(5626)*y(5674)+y(5627)*y(5675)+y(5628)*y(5676)+y(5629)*y(5677));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(5625);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
