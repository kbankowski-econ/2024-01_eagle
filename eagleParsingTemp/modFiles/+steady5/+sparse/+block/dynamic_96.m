function [y, T, residual, g1] = dynamic_96(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4091)*y(4025))-(y(5015)*params(533)*y(5075)*y(3982)/params(300)+y(4646)*params(457)*y(4706)*y(3981)/params(300)+y(4277)*params(377)*y(4337)*y(3980)/params(300)+y(3538)*params(223)*y(3598)*y(3979)/params(300)+y(2800)*params(69)*y(2860)*y(3977)/params(300)+y(3169)*T(795));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4025);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
