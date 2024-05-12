function [y, T, residual, g1] = dynamic_208(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(1149)*y(16232))-(y(8700)*(-params(69))-params(146)*y(9238)-params(223)*y(9776)-params(300)*y(10314)-params(377)*y(10852)-params(454)*y(11390)-params(531)*y(11928)-params(608)*y(12466)-params(685)*y(13004)-params(762)*y(13542)-params(839)*y(14080)-params(916)*y(14618)-params(993)*y(15156)-params(1073)*y(15694));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(1149);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
