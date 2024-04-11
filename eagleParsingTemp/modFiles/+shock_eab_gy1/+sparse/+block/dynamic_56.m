function [y, T, residual, g1] = dynamic_56(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2804)*y(2871))-(y(4808)*y(4868)*y(2761)*params(624)/params(70)+y(4454)*y(4514)*y(2760)*params(533)/params(70)+y(4100)*y(4160)*y(2759)*params(438)/params(70)+y(3746)*y(3806)*y(2758)*params(346)/params(70)+y(3038)*y(3098)*y(2756)*params(162)/params(70)+y(3392)*y(3452)*y(2757)*params(254)/params(70));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2804);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
