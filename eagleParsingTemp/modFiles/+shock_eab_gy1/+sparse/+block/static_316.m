function [y, T, residual, g1] = static_316(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(1)-(y(4586)*params(809)*(1-y(4487))*y(7672)/y(7643));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=(-(y(4586)*params(809)*(-y(7672))/y(7643)));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
