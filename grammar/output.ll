declare i32 @printf(i8*, ...)
declare i32 @scanf(i8*, ...)
declare i8* @strcpy(i8*, i8*)
declare i8* @strcat(i8*, i8*)
declare i32 @atoi(i8*)
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg)
@strpi = constant [4 x i8] c"%d\0A\00"
@strpd = constant [4 x i8] c"%f\0A\00"
@strps = constant [4 x i8] c"%s\0A\00"
@strsi = constant [3 x i8] c"%d\00"
@strsd = constant [4 x i8] c"%lf\00"
@strs = constant [6 x i8] c"%[^
] "
@strspi = constant [3 x i8] c"%d "
@.strpbool = constant [3 x i8] c"%d\00"
@strTrue = private unnamed_addr constant [6 x i8] c"true\0A\00"
@strFalse = private unnamed_addr constant [7 x i8] c"false\0A\00"

@b = global i32 0
@c = global i32 0
define i32 @main() nounwind {
store i32 20, i32* @b
store i32 100, i32* @c
%loop.1 = alloca i32
store i32 0, i32* %loop.1
br label %cond1
cond1:
%tmp.1 = load i32, i32* %loop.1
%tmp.2 = add i32 %tmp.1, 1
store i32 %tmp.2, i32* %loop.1
%tmp.3 = icmp slt i32 %tmp.1, 5
br i1 %tmp.3, label %true1, label %false1
true1:
%tmp.4 = load i32, i32* @b
%tmp.5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @strpi, i32 0, i32 0), i32 %tmp.4)
%tmp.6 = load i32, i32* @b
%tmp.7 = load i32, i32* @b
%tmp.8 = sub i32 %tmp.7, 1
store i32 %tmp.8, i32* @b
%loop.9 = alloca i32
store i32 0, i32* %loop.9
br label %cond2
cond2:
%tmp.9 = load i32, i32* %loop.9
%tmp.10 = add i32 %tmp.9, 1
store i32 %tmp.10, i32* %loop.9
%tmp.11 = icmp slt i32 %tmp.9, 2
br i1 %tmp.11, label %true2, label %false2
true2:
%tmp.12 = load i32, i32* @c
%tmp.13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @strpi, i32 0, i32 0), i32 %tmp.12)
%tmp.14 = load i32, i32* @c
%tmp.15 = load i32, i32* @c
%tmp.16 = sub i32 %tmp.15, 1
store i32 %tmp.16, i32* @c
br label %cond2
false2:
br label %cond1
false1:
store i32 50, i32* @c
%loop.17 = alloca i32
store i32 0, i32* %loop.17
br label %cond3
cond3:
%tmp.17 = load i32, i32* %loop.17
%tmp.18 = add i32 %tmp.17, 1
store i32 %tmp.18, i32* %loop.17
%tmp.19 = icmp slt i32 %tmp.17, 2
br i1 %tmp.19, label %true3, label %false3
true3:
%tmp.20 = load i32, i32* @c
%tmp.21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @strpi, i32 0, i32 0), i32 %tmp.20)
%tmp.22 = load i32, i32* @c
%tmp.23 = load i32, i32* @c
%tmp.24 = sub i32 %tmp.23, 1
store i32 %tmp.24, i32* @c
br label %cond3
false3:
%tmp.25 = load i32, i32* @c
%tmp.26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @strpi, i32 0, i32 0), i32 %tmp.25)
  ret i32 0
}
