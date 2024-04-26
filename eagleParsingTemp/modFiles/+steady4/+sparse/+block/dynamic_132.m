function [y, T, residual, g1] = dynamic_132(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(7955)*y(8008))-(y(7956)*y(8009)+y(7958)*y(8010)+y(7960)*y(8011)+y(7962)*y(8012));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(7955);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
