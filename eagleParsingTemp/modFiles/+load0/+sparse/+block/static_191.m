function [y, T, residual, g1] = static_191(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(635)*y(688))-(y(636)*y(689)+y(638)*y(690)+y(640)*y(691)+y(642)*y(692));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(635);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
