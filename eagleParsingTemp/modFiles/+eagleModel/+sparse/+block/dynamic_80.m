function [y, T, residual, g1] = dynamic_80(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(824)*y(6677))-(y(3709)*(-params(70))-params(164)*y(4080)-params(258)*y(4451)-params(352)*y(4822)-params(446)*y(5193)-params(540)*y(5564)-params(634)*y(5935)-params(731)*y(6306));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(824);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
