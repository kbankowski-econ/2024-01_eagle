function [y, T, residual, g1] = dynamic_181(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(12521)*y(12573))-(y(12522)*y(12574)+y(12524)*y(12575)+y(12526)*y(12576)+y(12528)*y(12577));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(12521);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
