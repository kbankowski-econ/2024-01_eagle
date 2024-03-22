function [y, T, residual, g1] = dynamic_33(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1302)*y(1245))-(y(1628)*params(287)*y(1646)*y(1217)/params(133)+y(973)*params(57)*y(991)*y(1215)/params(133)+y(1410)*params(212)*y(1428)*y(1216)/params(133));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1245);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
