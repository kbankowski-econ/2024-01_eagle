function [y, T, residual, g1] = static_174(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(599)*y(651))-(y(600)*y(652)+y(602)*y(653)+y(604)*y(654)+y(606)*y(655));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(599);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
