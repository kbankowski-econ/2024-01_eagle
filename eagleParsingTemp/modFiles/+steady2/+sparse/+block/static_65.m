function [y, T, residual, g1] = static_65(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1182))-((1-params(339))*x(105)+y(1182)*params(339)+x(118));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(339);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
