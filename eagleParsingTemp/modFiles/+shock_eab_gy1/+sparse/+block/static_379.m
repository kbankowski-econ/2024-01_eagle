function [y, T, residual, g1] = static_379(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(1472)*y(7560))-(y(350)*(-params(70))-params(170)*y(865)-params(270)*y(1380)-params(370)*y(1895)-params(470)*y(2410)-params(570)*y(2925)-params(670)*y(3440)-params(770)*y(3955)-params(870)*y(4470)-params(970)*y(4985)-params(1070)*y(5500)-params(1170)*y(6015)-params(1270)*y(6530)-params(1373)*y(7045));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(1472);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
