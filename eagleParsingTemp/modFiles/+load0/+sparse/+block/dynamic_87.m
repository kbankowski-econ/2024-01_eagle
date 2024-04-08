function [y, T, residual, g1] = dynamic_87(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4426)*y(4359))-(y(4981)*params(533)*y(5041)*y(4316)/params(377)+y(4612)*params(457)*y(4672)*y(4315)/params(377)+y(3873)*params(300)*y(3933)*y(4314)/params(377)+y(3504)*params(223)*y(3564)*y(4313)/params(377)+y(2766)*params(69)*y(2826)*y(4311)/params(377)+y(3135)*params(146)*y(3195)*y(4312)/params(377));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4359);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
