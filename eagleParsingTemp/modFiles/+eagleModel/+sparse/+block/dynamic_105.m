function [y, T, residual, g1] = dynamic_105(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(1139)*y(10688))-(y(5815)*(-params(70))-params(167)*y(6258)-params(264)*y(6701)-params(361)*y(7144)-params(458)*y(7587)-params(555)*y(8030)-params(652)*y(8473)-params(749)*y(8916)-params(846)*y(9359)-params(943)*y(9802)-params(1043)*y(10245));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(1139);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
