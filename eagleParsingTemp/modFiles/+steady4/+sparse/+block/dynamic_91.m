function [y, T, residual, g1] = dynamic_91(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4830)*y(4763))-(y(5017)*params(533)*y(5077)*y(4720)/params(457)+y(4278)*params(377)*y(4338)*y(4719)/params(457)+y(3909)*params(300)*y(3969)*y(4718)/params(457)+y(3540)*params(223)*y(3600)*y(4717)/params(457)+y(2802)*params(69)*y(2862)*y(4715)/params(457)+y(3171)*params(146)*y(3231)*y(4716)/params(457));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4763);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
