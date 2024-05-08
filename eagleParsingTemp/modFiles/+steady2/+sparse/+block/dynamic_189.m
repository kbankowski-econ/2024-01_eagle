function [y, T, residual, g1] = dynamic_189(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(9564)*y(9612))-(y(9565)*y(9613)+y(9566)*y(9614)+y(9567)*y(9615)+y(9568)*y(9616));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(9564);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
