function [y, T, residual, g1] = dynamic_93(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(8988)*y(9041))-(y(8989)*y(9042)+y(8991)*y(9043)+y(8993)*y(9044)+y(8995)*y(9045));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(8988);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
