function [y, T, residual, g1] = dynamic_132(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(1472)*y(15638))-(y(8428)*(-params(70))-params(170)*y(8943)-params(270)*y(9458)-params(370)*y(9973)-params(470)*y(10488)-params(570)*y(11003)-params(670)*y(11518)-params(770)*y(12033)-params(870)*y(12548)-params(970)*y(13063)-params(1070)*y(13578)-params(1170)*y(14093)-params(1270)*y(14608)-params(1373)*y(15123));
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
