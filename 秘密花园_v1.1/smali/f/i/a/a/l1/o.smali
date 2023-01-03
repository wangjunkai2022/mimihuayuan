.class public final Lf/i/a/a/l1/o;
.super Ljava/io/InputStream;
.source "DataSourceInputStream.java"


# instance fields
.field public final a:Lf/i/a/a/l1/m;

.field public final b:Lf/i/a/a/l1/p;

.field public final c:[B

.field public d:Z

.field public e:Z

.field public f:J


# direct methods
.method public constructor <init>(Lf/i/a/a/l1/m;Lf/i/a/a/l1/p;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lf/i/a/a/l1/o;->d:Z

    .line 3
    iput-boolean v0, p0, Lf/i/a/a/l1/o;->e:Z

    .line 4
    iput-object p1, p0, Lf/i/a/a/l1/o;->a:Lf/i/a/a/l1/m;

    .line 5
    iput-object p2, p0, Lf/i/a/a/l1/o;->b:Lf/i/a/a/l1/p;

    const/4 p1, 0x1

    new-array p1, p1, [B

    .line 6
    iput-object p1, p0, Lf/i/a/a/l1/o;->c:[B

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lf/i/a/a/l1/o;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/i/a/a/l1/o;->a:Lf/i/a/a/l1/m;

    invoke-interface {v0}, Lf/i/a/a/l1/m;->close()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lf/i/a/a/l1/o;->e:Z

    :cond_0
    return-void
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/l1/o;->c:[B

    invoke-virtual {p0, v0}, Lf/i/a/a/l1/o;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lf/i/a/a/l1/o;->c:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xff

    :goto_0
    return v1
.end method

.method public read([B)I
    .locals 2
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lf/i/a/a/l1/o;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 3
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    iget-boolean v0, p0, Lf/i/a/a/l1/o;->e:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lc/a/a/b/g/h;->v(Z)V

    .line 5
    iget-boolean v0, p0, Lf/i/a/a/l1/o;->d:Z

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lf/i/a/a/l1/o;->a:Lf/i/a/a/l1/m;

    iget-object v2, p0, Lf/i/a/a/l1/o;->b:Lf/i/a/a/l1/p;

    invoke-interface {v0, v2}, Lf/i/a/a/l1/m;->b(Lf/i/a/a/l1/p;)J

    .line 7
    iput-boolean v1, p0, Lf/i/a/a/l1/o;->d:Z

    .line 8
    :cond_0
    iget-object v0, p0, Lf/i/a/a/l1/o;->a:Lf/i/a/a/l1/m;

    invoke-interface {v0, p1, p2, p3}, Lf/i/a/a/l1/m;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    return p2

    .line 9
    :cond_1
    iget-wide p2, p0, Lf/i/a/a/l1/o;->f:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lf/i/a/a/l1/o;->f:J

    return p1
.end method
