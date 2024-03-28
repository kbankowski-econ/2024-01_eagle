function [y, T, residual, g1] = dynamic_91(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3598)*y(3541))-(y(4047)*params(442)*y(4083)*y(3498)/params(312)+y(3748)*params(379)*y(3784)*y(3497)/params(312)+y(3149)*params(248)*y(3185)*y(3496)/params(312)+y(2850)*T(943)+y(2252)*params(56)*y(2288)*y(3493)/params(312)+y(2551)*T(942));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3541);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
