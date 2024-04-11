function [y, T, residual, g1] = dynamic_94(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5197)*y(5132))-(y(4648)*params(457)*y(4708)*y(5089)/params(533)+y(4279)*params(377)*y(4339)*y(5088)/params(533)+y(3910)*params(300)*y(3970)*y(5087)/params(533)+y(3541)*params(223)*y(3601)*y(5086)/params(533)+y(2803)*params(69)*y(2863)*y(5084)/params(533)+y(3172)*params(146)*y(3232)*y(5085)/params(533));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(5132);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
