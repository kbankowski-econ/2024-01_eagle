function [y, T] = dynamic_202(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(13546)=y(13464);
  y(8879)=y(8930)*(1-params(216))+params(216)*y(1493)+x(77);
  y(13377)=((params(864)+T(3321)-1)*y(13546)-params(864)*x(303)*y(13542))/(y(13542)*(1-x(303)));
end
