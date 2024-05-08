function [y, T, residual, g1] = dynamic_179(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(7809)*y(7862))-(y(7810)*y(7863)+y(7812)*y(7864)+y(7814)*y(7865)+y(7816)*y(7866));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(7809);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
