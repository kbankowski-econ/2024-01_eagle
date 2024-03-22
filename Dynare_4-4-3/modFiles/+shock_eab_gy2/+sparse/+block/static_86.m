function [y, T, residual, g1] = static_86(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(86)*y(143))-(y(686)*y(704)*y(58)*params(287)/params(57)+y(250)*y(268)*y(56)*params(133)/params(57)+y(468)*y(486)*y(57)*params(212)/params(57));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(86);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
