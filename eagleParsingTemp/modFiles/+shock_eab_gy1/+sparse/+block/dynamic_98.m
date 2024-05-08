function [y, T, residual, g1] = dynamic_98(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(7569)*y(7622))-(y(7570)*y(7623)+y(7572)*y(7624)+y(7574)*y(7625)+y(7576)*y(7626));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(7569);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
