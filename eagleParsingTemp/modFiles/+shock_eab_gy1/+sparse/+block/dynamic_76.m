function [y, T, residual, g1] = dynamic_76(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6761)*y(6814))-(y(6762)*y(6815)+y(6764)*y(6816)+y(6766)*y(6817)+y(6768)*y(6818));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(6761);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
