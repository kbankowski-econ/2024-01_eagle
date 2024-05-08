function [y, T, residual, g1] = dynamic_123(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(7486)*y(7538))-(y(7487)*y(7539)+y(7489)*y(7540)+y(7491)*y(7541)+y(7493)*y(7542));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(7486);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
