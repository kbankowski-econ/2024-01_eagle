function [y, T, residual, g1] = dynamic_85(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3354)*y(3287))-(y(5013)*T(1154)+y(4644)*T(1153)+y(4275)*T(1152)+y(3906)*T(1151)+y(2798)*params(69)*y(2858)*y(3239)/params(146)+y(3537)*T(1093));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3287);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
