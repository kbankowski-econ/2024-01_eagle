function [y, T, residual, g1] = dynamic_92(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4320)*y(4258))-(y(4861)*params(673)*y(4901)*y(4216)/params(477)+y(4512)*params(577)*y(4552)*y(4215)/params(477)+y(3813)*params(380)*y(3853)*y(4214)/params(477)+y(3464)*params(283)*y(3504)*y(4213)/params(477)+y(2766)*params(89)*y(2806)*y(4211)/params(477)+y(3115)*params(186)*y(3155)*y(4212)/params(477));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4258);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
