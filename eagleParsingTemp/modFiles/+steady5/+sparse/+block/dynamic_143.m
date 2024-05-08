function [y, T, residual, g1] = dynamic_143(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(8311)*y(8363))-(y(8312)*y(8364)+y(8314)*y(8365)+y(8316)*y(8366)+y(8318)*y(8367));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(8311);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
