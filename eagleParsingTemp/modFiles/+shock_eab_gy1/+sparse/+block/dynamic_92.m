function [y, T, residual, g1] = dynamic_92(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(11988)*y(12041))-(y(11989)*y(12042)+y(11991)*y(12043)+y(11993)*y(12044)+y(11995)*y(12045));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(11988);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
