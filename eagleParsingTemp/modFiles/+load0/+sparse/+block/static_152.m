function [y, T, residual, g1] = static_152(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(153)*y(212))-(y(1863)*y(1899)*y(110)*params(449)/params(57)+y(1562)*y(1598)*y(109)*params(385)/params(57)+y(1261)*y(1297)*y(108)*params(317)/params(57)+y(960)*y(996)*y(107)*params(252)/params(57)+y(358)*y(394)*y(105)*params(122)/params(57)+y(659)*y(695)*y(106)*params(187)/params(57));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(153);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
