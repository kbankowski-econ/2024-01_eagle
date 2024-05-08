function [y, T, residual, g1] = dynamic_134(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5765)*y(5817))-(y(5766)*y(5818)+y(5768)*y(5819)+y(5770)*y(5820)+y(5772)*y(5821));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(5765);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
