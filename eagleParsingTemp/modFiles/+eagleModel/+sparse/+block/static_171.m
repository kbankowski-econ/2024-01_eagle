function [y, T] = static_171(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
  T(1484)=y(2352)*y(2405)/(y(2352)*y(2405)+y(2390)*y(2324));
  T(1485)=y(2390)*y(2324)/(y(2352)*y(2405)+y(2390)*y(2324));
  y(2299)=T(1484)*y(2311)+T(1485)*y(2305);
end
