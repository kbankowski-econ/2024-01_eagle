function [y, T, residual, g1] = static_349(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(905)*y(958))-(y(906)*y(959)+y(908)*y(960)+y(910)*y(961)+y(912)*y(962));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(905);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
