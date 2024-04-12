function [y, T, residual, g1] = static_161(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(200)*y(267))-(y(2204)*y(2264)*y(157)*params(624)/params(70)+y(1850)*y(1910)*y(156)*params(533)/params(70)+y(1496)*y(1556)*y(155)*params(438)/params(70)+y(1142)*y(1202)*y(154)*params(346)/params(70)+y(434)*y(494)*y(152)*params(162)/params(70)+y(788)*y(848)*y(153)*params(254)/params(70));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(200);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
