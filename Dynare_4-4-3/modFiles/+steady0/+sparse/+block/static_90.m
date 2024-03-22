function [y, T, residual, g1] = static_90(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(374)*y(317))-(y(724)*params(250)*y(742)*y(289)/params(120)+y(33)*params(56)*y(51)*y(287)/params(120)+y(494)*params(187)*y(512)*y(288)/params(120));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(317);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
