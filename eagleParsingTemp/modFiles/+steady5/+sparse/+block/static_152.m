function [y, T, residual, g1] = static_152(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1743)*y(1677))-(y(2299)*params(533)*y(2359)*y(1634)/params(377)+y(1930)*params(457)*y(1990)*y(1633)/params(377)+y(1191)*params(300)*y(1251)*y(1632)/params(377)+y(822)*params(223)*y(882)*y(1631)/params(377)+y(84)*params(69)*y(144)*y(1629)/params(377)+y(453)*params(146)*y(513)*y(1630)/params(377));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1677);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
