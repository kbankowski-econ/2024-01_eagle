function [y, T, residual, g1] = dynamic_100(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(13103)*y(13156))-(y(13104)*y(13157)+y(13106)*y(13158)+y(13108)*y(13159)+y(13110)*y(13160));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(13103);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
