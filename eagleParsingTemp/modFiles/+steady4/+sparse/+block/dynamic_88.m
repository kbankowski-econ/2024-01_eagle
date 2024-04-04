function [y, T, residual, g1] = dynamic_88(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3055)*y(2996))-(y(4106)*T(907)+y(3805)*T(906)+y(3504)*params(317)*y(3540)*y(2951)/params(187)+y(3203)*params(252)*y(3239)*y(2950)/params(187)+y(2299)*params(57)*y(2335)*y(2948)/params(187)+y(2600)*params(122)*y(2636)*y(2949)/params(187));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2996);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
