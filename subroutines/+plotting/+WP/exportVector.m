function exportVector(fig, fileName, sizeCm)
%EXPORTVECTOR Write a figure as a vector PDF and a 300 dpi PNG at its paper size.
%   exportVector(fig, fileName, [width height]) sets the paper size to the
%   figure size in centimetres and prints fileName.pdf (vector) and
%   fileName.png. Headless exportgraphics shrinks figures to about 40 % of
%   their size; print with the paper size set keeps the natural size, so the
%   paper can use a bare \includegraphics{...pdf} without width=.
    set(fig, 'PaperUnits', 'centimeters', 'PaperSize', sizeCm, ...
        'PaperPosition', [0 0 sizeCm]);
    print(fig, sprintf('%s.pdf', fileName), '-dpdf', '-vector');
    print(fig, sprintf('%s.png', fileName), '-dpng', '-r300');
end
