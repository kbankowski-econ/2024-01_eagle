function [y, T, residual, g1] = dynamic_56(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1348)*y(1291))-(y(1698)*params(250)*y(1716)*y(1263)/params(120)+y(1007)*params(56)*y(1025)*y(1261)/params(120)+y(1468)*params(187)*y(1486)*y(1262)/params(120));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1291);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
