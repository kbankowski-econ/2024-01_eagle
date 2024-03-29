function [y, T, residual, g1] = static_94(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(470)*y(399))-(y(886)*params(335)*y(922)*y(365)/params(162)+y(39)*params(77)*y(75)*y(363)/params(162)+y(604)*params(250)*y(640)*y(364)/params(162));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(399);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
