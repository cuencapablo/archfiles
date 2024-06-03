$pdf_mode = 1;
$bibtex_use = 2;
$latex = 'latex --src-specials %O %S';
$show_time = 1;
set_tex_cmds('-synctex=1 -interaction=nonstopmode --shell-escape %O %S');

# This ensures buffer flushing, which makes output better in vimtex
STDOUT->autoflush;
STDERR->autoflush;

push @generated_exts, "cb";
push @generated_exts, "cb2";
push @generated_exts, "spl";
push @generated_exts, "nav";
push @generated_exts, "snm";
push @generated_exts, "tdo";
push @generated_exts, "nmo";
push @generated_exts, "brf";
push @generated_exts, "nlg";
push @generated_exts, "nlo";
push @generated_exts, "nls";
push @generated_exts, "auxlock";
push @generated_exts, "synctex.gz";
push @generated_exts, "synctex(busy)";
push @generated_exts, "pgf-plot.*";
push @generated_exts, "run.xml";
