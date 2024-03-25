function [y, T, residual, g1] = dynamic_69(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1984)*y(1930))-(y(2365)*params(349)*y(2383)*y(1898)/params(205)+y(2118)*params(279)*y(2136)*y(1897)/params(205)+y(1376)*params(63)*y(1394)*y(1895)/params(205)+y(1623)*params(134)*y(1641)*y(1896)/params(205));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1930);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
