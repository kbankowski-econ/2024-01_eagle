function [y, T, residual, g1] = static_244(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(3738)=params(104)*(y(277)/T(813))^params(109);
  residual(1)=(y(315))-((1-params(104))*(y(347)/y(346))^(-params(109))+y(315)*T(3738));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(3738);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
