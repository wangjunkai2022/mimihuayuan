.class public final Lf/i/a/a/a1/b/a;
.super Lf/i/a/a/l1/h;
.source "RtmpDataSource.java"


# instance fields
.field public e:Lnet/butterflytv/rtmp_client/RtmpClient;

.field public f:Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.rtmp"

    .line 1
    invoke-static {v0}, Lf/i/a/a/a0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lf/i/a/a/l1/h;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public b(Lf/i/a/a/l1/p;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/butterflytv/rtmp_client/RtmpClient$a;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lf/i/a/a/l1/h;->g(Lf/i/a/a/l1/p;)V

    .line 2
    new-instance v0, Lnet/butterflytv/rtmp_client/RtmpClient;

    invoke-direct {v0}, Lnet/butterflytv/rtmp_client/RtmpClient;-><init>()V

    iput-object v0, p0, Lf/i/a/a/a1/b/a;->e:Lnet/butterflytv/rtmp_client/RtmpClient;

    .line 3
    iget-object v1, p1, Lf/i/a/a/l1/p;->a:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Lnet/butterflytv/rtmp_client/RtmpClient;->nativeAlloc()J

    move-result-wide v2

    iput-wide v2, v0, Lnet/butterflytv/rtmp_client/RtmpClient;->a:J

    const/4 v4, 0x0

    .line 5
    invoke-virtual {v0, v1, v4, v2, v3}, Lnet/butterflytv/rtmp_client/RtmpClient;->nativeOpen(Ljava/lang/String;ZJ)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 6
    iget-object v0, p1, Lf/i/a/a/l1/p;->a:Landroid/net/Uri;

    iput-object v0, p0, Lf/i/a/a/a1/b/a;->f:Landroid/net/Uri;

    .line 7
    invoke-virtual {p0, p1}, Lf/i/a/a/l1/h;->h(Lf/i/a/a/l1/p;)V

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    const-wide/16 v2, 0x0

    .line 8
    iput-wide v2, v0, Lnet/butterflytv/rtmp_client/RtmpClient;->a:J

    .line 9
    new-instance p1, Lnet/butterflytv/rtmp_client/RtmpClient$a;

    invoke-direct {p1, v1}, Lnet/butterflytv/rtmp_client/RtmpClient$a;-><init>(I)V

    throw p1
.end method

.method public close()V
    .locals 4

    .line 1
    iget-object v0, p0, Lf/i/a/a/a1/b/a;->f:Landroid/net/Uri;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput-object v1, p0, Lf/i/a/a/a1/b/a;->f:Landroid/net/Uri;

    .line 3
    invoke-virtual {p0}, Lf/i/a/a/l1/h;->f()V

    .line 4
    :cond_0
    iget-object v0, p0, Lf/i/a/a/a1/b/a;->e:Lnet/butterflytv/rtmp_client/RtmpClient;

    if-eqz v0, :cond_1

    .line 5
    iget-wide v2, v0, Lnet/butterflytv/rtmp_client/RtmpClient;->a:J

    invoke-virtual {v0, v2, v3}, Lnet/butterflytv/rtmp_client/RtmpClient;->nativeClose(J)V

    .line 6
    iput-object v1, p0, Lf/i/a/a/a1/b/a;->e:Lnet/butterflytv/rtmp_client/RtmpClient;

    :cond_1
    return-void
.end method

.method public d()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/a1/b/a;->f:Landroid/net/Uri;

    return-object v0
.end method

.method public read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/a1/b/a;->e:Lnet/butterflytv/rtmp_client/RtmpClient;

    .line 2
    iget-wide v4, v0, Lnet/butterflytv/rtmp_client/RtmpClient;->a:J

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lnet/butterflytv/rtmp_client/RtmpClient;->nativeRead([BIIJ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lf/i/a/a/l1/h;->e(I)V

    return p1
.end method
