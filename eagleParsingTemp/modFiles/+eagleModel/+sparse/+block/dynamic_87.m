function [y, T, residual, g1] = dynamic_87(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(9922)*y(9975))-(y(9923)*y(9976)+y(9925)*y(9977)+y(9927)*y(9978)+y(9929)*y(9979));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(9922);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
