function [y, T, residual, g1] = dynamic_94(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4251)*y(4195))-(y(3797)*params(391)*y(3833)*y(4148)/params(456)+y(3494)*T(566)+y(3191)*T(565)+y(2888)*T(564)+y(2282)*T(562)+y(2585)*T(563));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4195);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
