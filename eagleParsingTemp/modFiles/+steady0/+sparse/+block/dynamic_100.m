function [y, T, residual, g1] = dynamic_100(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4795)*y(4728))-(y(4982)*params(533)*y(5042)*y(4685)/params(457)+y(4243)*params(377)*y(4303)*y(4684)/params(457)+y(3874)*params(300)*y(3934)*y(4683)/params(457)+y(3505)*params(223)*y(3565)*y(4682)/params(457)+y(2767)*params(69)*y(2827)*y(4680)/params(457)+y(3136)*params(146)*y(3196)*y(4681)/params(457));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4728);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
