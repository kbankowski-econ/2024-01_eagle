function [y, T, residual, g1] = dynamic_143(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5371)*y(5424))-(y(5372)*y(5425)+y(5374)*y(5426)+y(5376)*y(5427)+y(5378)*y(5428));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(5371);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
