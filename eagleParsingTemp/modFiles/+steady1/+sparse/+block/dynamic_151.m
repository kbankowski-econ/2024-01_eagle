function [y, T, residual, g1] = dynamic_151(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(12244)*y(12297))-(y(12245)*y(12298)+y(12247)*y(12299)+y(12249)*y(12300)+y(12251)*y(12301));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(12244);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
