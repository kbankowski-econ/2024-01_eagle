function [y, T, residual, g1] = dynamic_68(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4120)*y(4173))-(y(4121)*y(4174)+y(4123)*y(4175)+y(4125)*y(4176)+y(4127)*y(4177));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4120);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
