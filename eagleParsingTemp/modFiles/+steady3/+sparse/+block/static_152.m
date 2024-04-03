function [y, T, residual, g1] = static_152(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(826)*y(767))-(y(1889)*params(463)*y(1925)*y(720)/params(193)+y(1584)*params(397)*y(1620)*y(719)/params(193)+y(1279)*params(327)*y(1315)*y(718)/params(193)+y(974)*params(260)*y(1010)*y(717)/params(193)+y(58)*params(59)*y(94)*y(715)/params(193)+y(363)*params(126)*y(399)*y(716)/params(193));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(767);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
