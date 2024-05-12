function [y, T, residual, g1] = dynamic_205(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(8627)*y(8675))-(y(8628)*y(8676)+y(8629)*y(8677)+y(8630)*y(8678)+y(8631)*y(8679));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(8627);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
