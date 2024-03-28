function [y, T, residual, g1] = dynamic_93(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3299)*y(3242))-(y(4046)*params(442)*y(4082)*y(3199)/params(248)+y(3747)*params(379)*y(3783)*y(3198)/params(248)+y(3448)*params(312)*y(3484)*y(3197)/params(248)+y(2849)*params(184)*y(2885)*y(3196)/params(248)+y(2251)*params(56)*y(2287)*y(3194)/params(248)+y(2550)*params(120)*y(2586)*y(3195)/params(248));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3242);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
