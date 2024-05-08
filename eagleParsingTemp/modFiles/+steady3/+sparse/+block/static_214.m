function [y, T, residual, g1] = static_214(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(684)*y(737))-(y(685)*y(738)+y(687)*y(739)+y(689)*y(740)+y(691)*y(741));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(684);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
