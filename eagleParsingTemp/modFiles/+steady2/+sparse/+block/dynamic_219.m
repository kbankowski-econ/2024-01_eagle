function [y, T, residual, g1] = dynamic_219(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(1929)*y(15392))-(y(8588)*(-params(121))-params(250)*y(9074)-params(379)*y(9560)-params(508)*y(10046)-params(637)*y(10532)-params(766)*y(11018)-params(895)*y(11504)-params(1024)*y(11990)-params(1153)*y(12476)-params(1282)*y(12962)-params(1411)*y(13448)-params(1540)*y(13934)-params(1669)*y(14420)-params(1801)*y(14906));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(1929);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
