function [y, T] = dynamic_202(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(13602)=y(13520);
  y(13433)=((params(864)+T(3510)-1)*y(13602)-params(864)*x(303)*y(13598))/(y(13598)*(1-x(303)));
end
