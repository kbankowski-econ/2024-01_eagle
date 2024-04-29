function [y, T, residual, g1] = dynamic_53(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3554)*y(3607))-(y(3555)*y(3608)+y(3557)*y(3609)+y(3559)*y(3610)+y(3561)*y(3611));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3554);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
