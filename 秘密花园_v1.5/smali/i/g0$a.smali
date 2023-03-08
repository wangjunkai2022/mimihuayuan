.class public final Li/g0$a;
.super Ljava/lang/Object;
.source "RequestBody.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lh/o/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Li/z;)Li/g0;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    sget-object v1, Lh/s/a;->a:Ljava/nio/charset/Charset;

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-static {p2, v0, v1}, Li/z;->a(Li/z;Ljava/nio/charset/Charset;I)Ljava/nio/charset/Charset;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    sget-object v1, Lh/s/a;->a:Ljava/nio/charset/Charset;

    .line 4
    sget-object v0, Li/z;->f:Li/z$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; charset=utf-8"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Li/z$a;->b(Ljava/lang/String;)Li/z;

    move-result-object p2

    .line 5
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v0, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p1, v0}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 6
    array-length v1, p1

    invoke-virtual {p0, p1, p2, v0, v1}, Li/g0$a;->b([BLi/z;II)Li/g0;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, "$this$toRequestBody"

    .line 7
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0
.end method

.method public final b([BLi/z;II)Li/g0;
    .locals 7

    if-eqz p1, :cond_0

    .line 1
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p3

    int-to-long v5, p4

    invoke-static/range {v1 .. v6}, Li/m0/b;->e(JJJ)V

    .line 2
    new-instance v0, Li/g0$a$a;

    invoke-direct {v0, p1, p2, p4, p3}, Li/g0$a$a;-><init>([BLi/z;II)V

    return-object v0

    :cond_0
    const-string p1, "$this$toRequestBody"

    .line 3
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
