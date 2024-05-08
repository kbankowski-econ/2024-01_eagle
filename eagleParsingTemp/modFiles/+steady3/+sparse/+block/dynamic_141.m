function [y, T, residual, g1] = dynamic_141(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(9801)*y(9854))-(y(9802)*y(9855)+y(9804)*y(9856)+y(9806)*y(9857)+y(9808)*y(9858));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(9801);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
