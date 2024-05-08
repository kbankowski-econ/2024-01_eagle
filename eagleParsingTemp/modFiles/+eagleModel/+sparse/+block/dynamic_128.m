function [y, T, residual, g1] = dynamic_128(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(1359)*y(13842))-(y(7459)*(-params(70))-params(169)*y(7950)-params(268)*y(8441)-params(367)*y(8932)-params(466)*y(9423)-params(565)*y(9914)-params(664)*y(10405)-params(763)*y(10896)-params(862)*y(11387)-params(961)*y(11878)-params(1060)*y(12369)-params(1159)*y(12860)-params(1261)*y(13351));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(1359);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
