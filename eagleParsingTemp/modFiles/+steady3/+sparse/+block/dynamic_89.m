function [y, T, residual, g1] = dynamic_89(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4823)*y(4756))-(y(5010)*T(652)+y(4271)*params(377)*y(4331)*y(4712)/params(457)+y(3902)*params(300)*y(3962)*y(4711)/params(457)+y(3533)*params(223)*y(3593)*y(4710)/params(457)+y(2795)*params(69)*y(2855)*y(4708)/params(457)+y(3164)*params(146)*y(3224)*y(4709)/params(457));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4756);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
