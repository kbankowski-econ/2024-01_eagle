function [y, T, residual, g1] = dynamic_93(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3356)*y(3297))-(y(4107)*T(589)+y(3806)*T(675)+y(3505)*T(674)+y(2902)*params(187)*y(2938)*y(3251)/params(252)+y(2300)*params(57)*y(2336)*y(3249)/params(252)+y(2601)*params(122)*y(2637)*y(3250)/params(252));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3297);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
