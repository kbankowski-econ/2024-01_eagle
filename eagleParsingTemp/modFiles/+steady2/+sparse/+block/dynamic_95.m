function [y, T, residual, g1] = dynamic_95(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2348)*y(2404))-(y(4009)*y(4035)*y(2306)*params(526)/params(68)+y(3718)*y(3744)*y(2305)*params(451)/params(68)+y(3427)*y(3453)*y(2304)*params(372)/params(68)+y(3136)*y(3162)*y(2303)*params(296)/params(68)+y(2554)*y(2580)*y(2301)*params(144)/params(68)+y(2845)*y(2871)*y(2302)*params(220)/params(68));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2348);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
