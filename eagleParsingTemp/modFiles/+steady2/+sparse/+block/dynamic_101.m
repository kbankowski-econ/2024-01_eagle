function [y, T, residual, g1] = dynamic_101(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4121)*y(4068))-(y(3699)*params(445)*y(3725)*y(4026)/params(519)+y(3410)*params(367)*y(3436)*y(4025)/params(519)+y(3121)*params(292)*y(3147)*y(4024)/params(519)+y(2832)*params(217)*y(2858)*y(4023)/params(519)+y(2254)*params(67)*y(2280)*y(4021)/params(519)+y(2543)*params(142)*y(2569)*y(4022)/params(519));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4068);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
