function [y, T, residual, g1] = static_174(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(558)*y(606))-(y(559)*y(607)+y(560)*y(608)+y(561)*y(609)+y(562)*y(610));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(558);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
