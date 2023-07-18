// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

public class PrintNumbers {
public static void main(String[] args) {
for (Integer i = 1; i <= 100; i++) {
if (i % 9 != 0) {
System.debug(i);
}
}
}
}