function [y, T, residual, g1] = dynamic_163(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(10383)*y(10431))-(y(10384)*y(10432)+y(10385)*y(10433)+y(10386)*y(10434)+y(10387)*y(10435));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(10383);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
