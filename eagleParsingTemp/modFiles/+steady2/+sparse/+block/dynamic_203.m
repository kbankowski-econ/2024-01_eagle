function [y, T, residual, g1] = dynamic_203(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(10085)*y(10133))-(y(10086)*y(10134)+y(10087)*y(10135)+y(10088)*y(10136)+y(10089)*y(10137));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(10085);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
