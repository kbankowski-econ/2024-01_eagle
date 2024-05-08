function [y, T, residual, g1] = dynamic_112(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(12900)*y(12953))-(y(12901)*y(12954)+y(12903)*y(12955)+y(12905)*y(12956)+y(12907)*y(12957));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(12900);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
