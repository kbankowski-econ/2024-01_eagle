function [y, T, residual, g1] = static_296(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(1398)*y(4892))-(y(239)*(-params(109))-params(226)*y(662)-params(343)*y(1085)-params(460)*y(1508)-params(577)*y(1931)-params(694)*y(2354)-params(811)*y(2777)-params(928)*y(3200)-params(1045)*y(3623)-params(1162)*y(4046)-params(1282)*y(4469));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(1398);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
