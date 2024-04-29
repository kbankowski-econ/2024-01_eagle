function [y, T, residual, g1] = dynamic_92(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4691)*y(4744))-(y(4692)*y(4745)+y(4694)*y(4746)+y(4696)*y(4747)+y(4698)*y(4748));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4691);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
