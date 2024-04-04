function [y, T, residual, g1] = dynamic_92(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3657)*y(3598))-(y(4108)*params(449)*y(4144)*y(3555)/params(317)+y(3807)*params(385)*y(3843)*y(3554)/params(317)+y(3204)*params(252)*y(3240)*y(3553)/params(317)+y(2903)*T(825)+y(2301)*params(57)*y(2337)*y(3550)/params(317)+y(2602)*params(122)*y(2638)*y(3551)/params(317));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3598);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
