function [y, T, residual, g1] = dynamic_95(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4279)*y(4221))-(y(3821)*params(397)*y(3857)*y(4174)/params(463)+y(3516)*params(327)*y(3552)*y(4173)/params(463)+y(3211)*params(260)*y(3247)*y(4172)/params(463)+y(2906)*params(193)*y(2942)*y(4171)/params(463)+y(2296)*params(59)*y(2332)*y(4169)/params(463)+y(2601)*params(126)*y(2637)*y(4170)/params(463));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4221);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
