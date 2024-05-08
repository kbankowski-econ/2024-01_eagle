function [y, T, residual, g1] = static_369(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(4453)=params(534)*T(1197)^params(539);
  residual(1)=(y(3353))-((1-params(534))*(y(3386)/y(3385))^(-params(539))+y(3353)*T(4453));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(4453);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
