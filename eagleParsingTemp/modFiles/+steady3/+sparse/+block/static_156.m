function [y, T, residual, g1] = static_156(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1416)*y(1357))-(y(1867)*params(449)*y(1903)*y(1314)/params(317)+y(1566)*params(385)*y(1602)*y(1313)/params(317)+y(963)*params(252)*y(999)*y(1312)/params(317)+y(662)*params(187)*y(698)*y(1311)/params(317)+y(60)*params(57)*y(96)*y(1309)/params(317)+y(361)*params(122)*y(397)*y(1310)/params(317));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1357);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
