function [y, T, residual, g1] = dynamic_98(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5088)*y(5141))-(y(5089)*y(5142)+y(5091)*y(5143)+y(5093)*y(5144)+y(5095)*y(5145));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(5088);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
