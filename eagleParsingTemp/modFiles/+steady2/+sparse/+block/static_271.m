function [y, T, residual, g1] = static_271(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(1237)*y(4239))-(y(219)*(-params(105))-params(218)*y(621)-params(331)*y(1023)-params(444)*y(1425)-params(557)*y(1827)-params(670)*y(2229)-params(783)*y(2631)-params(896)*y(3033)-params(1009)*y(3435)-params(1125)*y(3837));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(1237);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
