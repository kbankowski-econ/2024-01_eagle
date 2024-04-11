function [y, T, residual, g1] = dynamic_95(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3971)*y(3909))-(y(4860)*params(673)*y(4900)*y(3867)/params(380)+y(4511)*params(577)*y(4551)*y(3866)/params(380)+y(4162)*params(477)*y(4202)*y(3865)/params(380)+y(3463)*params(283)*y(3503)*y(3864)/params(380)+y(2765)*params(89)*y(2805)*y(3862)/params(380)+y(3114)*params(186)*y(3154)*y(3863)/params(380));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3909);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
