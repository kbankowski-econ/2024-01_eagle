function [y, T, residual, g1] = dynamic_88(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6801)*y(6854))-(y(6802)*y(6855)+y(6804)*y(6856)+y(6806)*y(6857)+y(6808)*y(6858));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(6801);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
