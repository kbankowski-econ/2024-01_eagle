function [y, T, residual, g1] = dynamic_110(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3859)*y(3803))-(y(4014)*params(526)*y(4040)*y(3761)/params(451)+y(3431)*params(372)*y(3457)*y(3760)/params(451)+y(3140)*params(296)*y(3166)*y(3759)/params(451)+y(2849)*params(220)*y(2875)*y(3758)/params(451)+y(2267)*params(68)*y(2293)*y(3756)/params(451)+y(2558)*params(144)*y(2584)*y(3757)/params(451));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3803);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
