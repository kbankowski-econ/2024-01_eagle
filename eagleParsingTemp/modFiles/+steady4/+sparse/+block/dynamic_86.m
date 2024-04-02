function [y, T, residual, g1] = dynamic_86(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2398)*y(2458))-(y(4134)*y(4170)*y(2351)*params(477)/params(61)+y(3828)*y(3864)*y(2350)*params(409)/params(61)+y(3522)*T(876)+y(3216)*y(3252)*y(2348)*params(268)/params(61)+y(2604)*y(2640)*y(2346)*params(130)/params(61)+y(2910)*T(859));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2398);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
