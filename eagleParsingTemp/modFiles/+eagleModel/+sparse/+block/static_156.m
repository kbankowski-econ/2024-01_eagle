function [y, T, residual, g1] = static_156(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2037)*y(1970))-(y(2209)*params(624)*y(2269)*y(1927)/params(533)+y(1500)*params(438)*y(1560)*y(1926)/params(533)+y(1146)*params(346)*y(1206)*y(1925)/params(533)+y(792)*params(254)*y(852)*y(1924)/params(533)+y(84)*params(70)*y(144)*y(1922)/params(533)+y(438)*params(162)*y(498)*y(1923)/params(533));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1970);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
