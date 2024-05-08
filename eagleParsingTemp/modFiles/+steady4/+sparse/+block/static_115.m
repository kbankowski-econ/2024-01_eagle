function [y, T, residual, g1] = static_115(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(439)*y(492))-(y(440)*y(493)+y(442)*y(494)+y(444)*y(495)+y(446)*y(496));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(439);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
