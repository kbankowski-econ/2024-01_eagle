function [y, T, residual, g1] = dynamic_89(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3544)*y(3490))-(y(3987)*params(519)*y(4013)*y(3448)/params(367)+y(3698)*params(445)*y(3724)*y(3447)/params(367)+y(3119)*params(292)*y(3145)*y(3446)/params(367)+y(2830)*params(217)*y(2856)*y(3445)/params(367)+y(2252)*params(67)*y(2278)*y(3443)/params(367)+y(2541)*params(142)*y(2567)*y(3444)/params(367));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3490);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
