function [y, T, residual, g1] = dynamic_190(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(12515)*y(12563))-(y(12516)*y(12564)+y(12517)*y(12565)+y(12518)*y(12566)+y(12519)*y(12567));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(12515);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
