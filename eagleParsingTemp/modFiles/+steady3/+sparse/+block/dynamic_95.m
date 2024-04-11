function [y, T, residual, g1] = dynamic_95(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3347)*y(3280))-(y(5006)*T(1109)+y(4637)*T(1108)+y(4268)*params(377)*y(4328)*y(3235)/params(146)+y(3899)*T(1107)+y(2791)*params(69)*y(2851)*y(3232)/params(146)+y(3530)*T(1106));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3280);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
