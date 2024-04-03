function [y, T, residual, g1] = dynamic_87(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3070)*y(3010))-(y(4136)*T(463)+y(3830)*T(462)+y(3524)*params(337)*y(3560)*y(2961)/params(199)+y(3218)*T(461)+y(2299)*params(61)*y(2335)*y(2958)/params(199)+y(2605)*params(130)*y(2641)*y(2959)/params(199));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3010);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
