function [y, T, residual, g1] = static_131(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(801)*y(854))-(y(802)*y(855)+y(804)*y(856)+y(806)*y(857)+y(808)*y(858));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(801);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
