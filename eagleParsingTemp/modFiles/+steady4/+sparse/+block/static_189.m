function [y, T, residual, g1] = static_189(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1334)=params(412)*T(977)^params(417);
  residual(1)=(y(1781))-((1-params(412))*(y(1812)/y(1811))^(-params(417))+y(1781)*T(1334));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1334);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
