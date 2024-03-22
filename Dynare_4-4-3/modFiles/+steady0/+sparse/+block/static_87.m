function [y, T, residual, g1] = static_87(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(604)*y(547))-(y(725)*params(250)*y(743)*y(519)/params(187)+y(34)*params(56)*y(52)*y(517)/params(187)+y(264)*params(120)*y(282)*y(518)/params(187));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(547);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
