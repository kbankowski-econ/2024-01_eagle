function [y, T, residual, g1] = static_247(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(927)*y(3785))-(y(230)*(-params(70))-params(165)*y(625)-params(260)*y(1020)-params(355)*y(1415)-params(450)*y(1810)-params(545)*y(2205)-params(640)*y(2600)-params(735)*y(2995)-params(833)*y(3390));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(927);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
