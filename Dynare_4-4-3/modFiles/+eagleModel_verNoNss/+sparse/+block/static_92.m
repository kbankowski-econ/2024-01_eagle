function [y, T, residual, g1] = static_92(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(361)*y(304))-(y(687)*params(287)*y(705)*y(276)/params(133)+y(32)*params(57)*y(50)*y(274)/params(133)+y(469)*params(212)*y(487)*y(275)/params(133));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(304);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
