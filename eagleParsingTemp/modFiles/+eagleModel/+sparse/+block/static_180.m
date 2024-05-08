function [y, T, residual, g1] = static_180(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(569)*y(622))-(y(570)*y(623)+y(572)*y(624)+y(574)*y(625)+y(576)*y(626));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(569);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
