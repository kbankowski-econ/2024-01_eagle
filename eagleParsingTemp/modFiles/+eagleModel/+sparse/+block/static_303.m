function [y, T, residual, g1] = static_303(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(1139)*y(5151))-(y(278)*(-params(70))-params(167)*y(721)-params(264)*y(1164)-params(361)*y(1607)-params(458)*y(2050)-params(555)*y(2493)-params(652)*y(2936)-params(749)*y(3379)-params(846)*y(3822)-params(943)*y(4265)-params(1043)*y(4708));
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
