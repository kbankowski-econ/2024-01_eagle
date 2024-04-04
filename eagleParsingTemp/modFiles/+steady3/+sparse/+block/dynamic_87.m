function [y, T, residual, g1] = dynamic_87(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2387)*y(2446))-(y(4097)*y(4133)*y(2344)*params(449)/params(57)+y(3796)*y(3832)*y(2343)*params(385)/params(57)+y(3495)*y(3531)*y(2342)*params(317)/params(57)+y(3194)*T(270)+y(2592)*y(2628)*y(2339)*params(122)/params(57)+y(2893)*T(806));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2387);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
