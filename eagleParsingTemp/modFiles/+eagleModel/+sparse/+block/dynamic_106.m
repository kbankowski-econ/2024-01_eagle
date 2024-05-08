function [y, T, residual, g1] = dynamic_106(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(12409)*y(12462))-(y(12410)*y(12463)+y(12412)*y(12464)+y(12414)*y(12465)+y(12416)*y(12466));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(12409);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
