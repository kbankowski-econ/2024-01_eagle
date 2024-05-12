function [y, T, residual, g1] = dynamic_184(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(8740)*y(8793))-(y(8741)*y(8794)+y(8743)*y(8795)+y(8745)*y(8796)+y(8747)*y(8797));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(8740);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
