.class public Lf/e/a/j/f0/j/d;
.super Ljava/lang/Object;
.source "MimeiApi.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "dQcCFg4BGVYKLAUESjwaMwUOCC0BHEF/MCxHPiAkUwlwWw0FPEdQfBkjBSkSO1MlTS9SKS8xAB1GXgNXS10HClYGBQYNEFgKS1MDVkhSBgoGUloBWRVYVV0ADFAeDgZcDlIAUFtFCwRKBQVXHVJTWgUDVFVaRgwAR14BXhtYAlNSUAUFDxBbARdeAAQeXFNZAw=="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lf/e/a/j/f0/j/d;->a:Ljava/lang/String;

    const-string v0, ""

    .line 2
    sput-object v0, Lf/e/a/j/f0/j/d;->b:Ljava/lang/String;

    .line 3
    sput-object v0, Lf/e/a/j/f0/j/d;->c:Ljava/lang/String;

    .line 4
    sput-object v0, Lf/e/a/j/f0/j/d;->d:Ljava/lang/String;

    .line 5
    sput-object v0, Lf/e/a/j/f0/j/d;->e:Ljava/lang/String;

    return-void
.end method

.method public static a()Z
    .locals 1

    .line 1
    sget-object v0, Lf/e/a/j/f0/j/d;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lf/e/a/j/f0/j/d;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lf/e/a/j/f0/j/d;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lf/e/a/j/f0/j/d;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
