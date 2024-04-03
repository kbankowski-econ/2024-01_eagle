function [y, T, residual, g1] = dynamic_93(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3375)*y(3316))-(y(4137)*T(667)+y(3831)*params(409)*y(3867)*y(3268)/params(268)+y(3525)*params(337)*y(3561)*y(3267)/params(268)+y(2912)*params(199)*y(2948)*y(3266)/params(268)+y(2300)*params(61)*y(2336)*y(3264)/params(268)+y(2606)*params(130)*y(2642)*y(3265)/params(268));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3316);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
