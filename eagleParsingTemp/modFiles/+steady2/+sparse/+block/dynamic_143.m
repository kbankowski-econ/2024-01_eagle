function [y, T, residual, g1] = dynamic_143(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5274)*y(5322))-(y(5275)*y(5323)+y(5276)*y(5324)+y(5277)*y(5325)+y(5278)*y(5326));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(5274);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
