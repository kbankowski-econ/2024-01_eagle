function [y, T, residual, g1] = dynamic_60(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4054)*y(3996))-(y(3619)*params(461)*y(3655)*y(3953)/params(540)+y(3333)*params(378)*y(3369)*y(3952)/params(540)+y(3047)*params(298)*y(3083)*y(3951)/params(540)+y(2761)*params(218)*y(2797)*y(3950)/params(540)+y(2189)*params(58)*y(2225)*y(3948)/params(540)+y(2475)*params(138)*y(2511)*y(3949)/params(540));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3996);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
