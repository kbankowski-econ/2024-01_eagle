function [y, T, residual, g1] = dynamic_105(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4669)*y(4607))-(y(4862)*params(673)*y(4902)*y(4565)/params(577)+y(4163)*params(477)*y(4203)*y(4564)/params(577)+y(3814)*params(380)*y(3854)*y(4563)/params(577)+y(3465)*params(283)*y(3505)*y(4562)/params(577)+y(2767)*params(89)*y(2807)*y(4560)/params(577)+y(3116)*params(186)*y(3156)*y(4561)/params(577));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4607);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
