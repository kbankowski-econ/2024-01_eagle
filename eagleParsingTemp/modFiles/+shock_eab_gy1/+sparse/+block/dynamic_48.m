function [y, T, residual, g1] = dynamic_48(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4557)*y(4610))-(y(4558)*y(4611)+y(4560)*y(4612)+y(4562)*y(4613)+y(4564)*y(4614));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4557);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
