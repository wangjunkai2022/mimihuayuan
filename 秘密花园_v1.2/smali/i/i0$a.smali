.class public final Li/i0$a;
.super Ljava/io/Reader;
.source "ResponseBody.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/i0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/io/Reader;

.field public final c:Lj/j;

.field public final d:Ljava/nio/charset/Charset;


# direct methods
.method public constructor <init>(Lj/j;Ljava/nio/charset/Charset;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    iput-object p1, p0, Li/i0$a;->c:Lj/j;

    iput-object p2, p0, Li/i0$a;->d:Ljava/nio/charset/Charset;

    return-void

    :cond_0
    const-string p1, "charset"

    .line 2
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p1, "source"

    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Li/i0$a;->a:Z

    .line 2
    iget-object v0, p0, Li/i0$a;->b:Ljava/io/Reader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Li/i0$a;->c:Lj/j;

    invoke-interface {v0}, Lj/a0;->close()V

    :goto_0
    return-void
.end method

.method public read([CII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    iget-boolean v0, p0, Li/i0$a;->a:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Li/i0$a;->b:Ljava/io/Reader;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    .line 3
    iget-object v1, p0, Li/i0$a;->c:Lj/j;

    invoke-interface {v1}, Lj/j;->C()Ljava/io/InputStream;

    move-result-object v1

    .line 4
    iget-object v2, p0, Li/i0$a;->c:Lj/j;

    iget-object v3, p0, Li/i0$a;->d:Ljava/nio/charset/Charset;

    invoke-static {v2, v3}, Li/m0/b;->x(Lj/j;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 5
    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 6
    iput-object v0, p0, Li/i0$a;->b:Ljava/io/Reader;

    .line 7
    :goto_0
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    move-result p1

    return p1

    .line 8
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const-string p1, "cbuf"

    .line 9
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
