function [y, T, residual, g1] = dynamic_110(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(12321)*y(12374))-(y(12322)*y(12375)+y(12324)*y(12376)+y(12326)*y(12377)+y(12328)*y(12378));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(12321);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
