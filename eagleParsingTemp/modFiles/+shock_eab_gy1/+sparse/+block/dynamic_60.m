function [y, T, residual, g1] = dynamic_60(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6020)*y(6073))-(y(6021)*y(6074)+y(6023)*y(6075)+y(6025)*y(6076)+y(6027)*y(6077));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(6020);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
