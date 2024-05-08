function [y, T, residual, g1] = dynamic_49(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3569)*y(3622))-(y(3570)*y(3623)+y(3572)*y(3624)+y(3574)*y(3625)+y(3576)*y(3626));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3569);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
