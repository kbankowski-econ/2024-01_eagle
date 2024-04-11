function [y, T, residual, g1] = dynamic_57(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3933)*y(3866))-(y(4811)*params(624)*y(4871)*y(3823)/params(346)+y(4457)*params(533)*y(4517)*y(3822)/params(346)+y(4103)*params(438)*y(4163)*y(3821)/params(346)+y(3394)*params(254)*y(3454)*y(3820)/params(346)+y(2686)*params(70)*y(2746)*y(3818)/params(346)+y(3040)*params(162)*y(3100)*y(3819)/params(346));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3866);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
