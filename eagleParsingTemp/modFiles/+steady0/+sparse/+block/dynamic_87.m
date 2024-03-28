function [y, T, residual, g1] = dynamic_87(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3000)*y(2943))-(y(4045)*params(442)*y(4081)*y(2900)/params(184)+y(3746)*params(379)*y(3782)*y(2899)/params(184)+y(3447)*params(312)*y(3483)*y(2898)/params(184)+y(3148)*params(248)*y(3184)*y(2897)/params(184)+y(2250)*params(56)*y(2286)*y(2895)/params(184)+y(2549)*params(120)*y(2585)*y(2896)/params(184));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2943);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
