function [y, T, residual, g1] = dynamic_54(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1807)*y(1751))-(y(1469)*params(187)*y(1487)*y(1723)/params(250)+y(1009)*params(56)*y(1027)*y(1721)/params(250)+y(1239)*params(120)*y(1257)*y(1722)/params(250));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1751);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
