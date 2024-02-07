function [y, T, residual, g1] = static_85(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(796)*y(740))-(y(470)*params(212)*y(488)*y(712)/params(287)+y(34)*params(57)*y(52)*y(710)/params(287)+y(252)*params(133)*y(270)*y(711)/params(287));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(740);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
