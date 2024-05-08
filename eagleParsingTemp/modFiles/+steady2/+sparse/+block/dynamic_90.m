function [y, T, residual, g1] = dynamic_90(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(552)*y(3566))-(y(2081)*(-params(85))-params(178)*y(2378)-params(271)*y(2675)-params(364)*y(2972)-params(460)*y(3269));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(552);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
