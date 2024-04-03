function [y, T, residual, g1] = static_163(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(780)*y(724))-(y(1805)*params(526)*y(1831)*y(682)/params(220)+y(1514)*params(451)*y(1540)*y(681)/params(220)+y(1223)*params(372)*y(1249)*y(680)/params(220)+y(932)*params(296)*y(958)*y(679)/params(220)+y(58)*params(68)*y(84)*y(677)/params(220)+y(349)*params(144)*y(375)*y(678)/params(220));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(724);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
