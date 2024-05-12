function [y, T, residual, g1] = dynamic_176(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(14120)*y(14173))-(y(14121)*y(14174)+y(14123)*y(14175)+y(14125)*y(14176)+y(14127)*y(14177));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(14120);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
