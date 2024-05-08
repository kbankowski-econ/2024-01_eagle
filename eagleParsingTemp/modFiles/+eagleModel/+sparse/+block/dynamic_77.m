function [y, T, residual, g1] = dynamic_77(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4798)*y(4851))-(y(4799)*y(4852)+y(4801)*y(4853)+y(4803)*y(4854)+y(4805)*y(4855));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4798);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
