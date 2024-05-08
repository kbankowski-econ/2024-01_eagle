function [y, T, residual, g1] = static_135(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(912)=params(306)*T(469)^params(311);
  residual(1)=(y(1096))-((1-params(306))*(y(1129)/y(1128))^(-params(311))+y(1096)*T(912));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(912);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
