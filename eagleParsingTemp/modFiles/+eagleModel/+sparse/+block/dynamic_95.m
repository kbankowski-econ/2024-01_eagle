function [y, T, residual, g1] = dynamic_95(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(8521)*y(8574))-(y(8522)*y(8575)+y(8524)*y(8576)+y(8526)*y(8577)+y(8528)*y(8578));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(8521);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
