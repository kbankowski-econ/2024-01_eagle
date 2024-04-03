function [y, T, residual, g1] = dynamic_91(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3568)*y(3512))-(y(4013)*params(526)*y(4039)*y(3470)/params(372)+y(3722)*params(451)*y(3748)*y(3469)/params(372)+y(3139)*params(296)*y(3165)*y(3468)/params(372)+y(2848)*params(220)*y(2874)*y(3467)/params(372)+y(2266)*params(68)*y(2292)*y(3465)/params(372)+y(2557)*params(144)*y(2583)*y(3466)/params(372));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3512);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
