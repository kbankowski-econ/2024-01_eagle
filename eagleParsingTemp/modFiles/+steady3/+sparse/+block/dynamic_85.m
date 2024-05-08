function [y, T, residual, g1] = dynamic_85(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4044)*y(4097))-(y(4045)*y(4098)+y(4047)*y(4099)+y(4049)*y(4100)+y(4051)*y(4101));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4044);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
