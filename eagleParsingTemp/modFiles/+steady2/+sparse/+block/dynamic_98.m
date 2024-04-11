function [y, T, residual, g1] = dynamic_98(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5017)*y(4956))-(y(4513)*params(577)*y(4553)*y(4914)/params(673)+y(4164)*params(477)*y(4204)*y(4913)/params(673)+y(3815)*params(380)*y(3855)*y(4912)/params(673)+y(3466)*params(283)*y(3506)*y(4911)/params(673)+y(2768)*params(89)*y(2808)*y(4909)/params(673)+y(3117)*params(186)*y(3157)*y(4910)/params(673));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4956);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
