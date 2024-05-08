function [y, T, residual, g1] = dynamic_128(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4559)*y(4607))-(y(4560)*y(4608)+y(4561)*y(4609)+y(4562)*y(4610)+y(4563)*y(4611));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4559);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
