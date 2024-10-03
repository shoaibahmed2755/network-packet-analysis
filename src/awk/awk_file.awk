BEGIN {
    FS = " ";
    OFS = " ";
    printf "#include <stdio.h>\n";
    printf "int main() {\n";
    printf "printf(\"\\n\");\n";
}

{
    if ($1 == "print") {
        printf "printf(\"%s\\n\");\n", $3;
    }
}

END {
    printf "return 0;\n";
    printf "}\n";
}
