function [y, T, residual, g1] = dynamic_89(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2755)*y(2696))-(y(4122)*T(846)+y(3817)*params(397)*y(3853)*y(2648)/params(126)+y(3512)*params(327)*y(3548)*y(2647)/params(126)+y(3207)*params(260)*y(3243)*y(2646)/params(126)+y(2291)*params(59)*y(2327)*y(2644)/params(126)+y(2902)*T(845));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2696);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
