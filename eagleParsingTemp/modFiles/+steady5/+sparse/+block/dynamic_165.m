function [y, T, residual, g1] = dynamic_165(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(8405)*y(8457))-(y(8406)*y(8458)+y(8408)*y(8459)+y(8410)*y(8460)+y(8412)*y(8461));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(8405);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
