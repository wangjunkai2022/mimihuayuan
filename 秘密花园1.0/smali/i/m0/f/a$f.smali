.class public final Li/m0/f/a$f;
.super Li/m0/f/a$a;
.source "Http1ExchangeCodec.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/m0/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "f"
.end annotation


# instance fields
.field public d:Z


# direct methods
.method public constructor <init>(Li/m0/f/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/m0/f/a$a;-><init>(Li/m0/f/a;)V

    return-void
.end method


# virtual methods
.method public c(Lj/g;J)J
    .locals 5

    if-eqz p1, :cond_5

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    cmp-long v3, p2, v0

    if-ltz v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 1
    iget-boolean v0, p0, Li/m0/f/a$a;->b:Z

    xor-int/2addr v0, v2

    if-eqz v0, :cond_3

    .line 2
    iget-boolean v0, p0, Li/m0/f/a$f;->d:Z

    const-wide/16 v3, -0x1

    if-eqz v0, :cond_1

    return-wide v3

    .line 3
    :cond_1
    invoke-super {p0, p1, p2, p3}, Li/m0/f/a$a;->c(Lj/g;J)J

    move-result-wide p1

    cmp-long p3, p1, v3

    if-nez p3, :cond_2

    .line 4
    iput-boolean v2, p0, Li/m0/f/a$f;->d:Z

    .line 5
    invoke-virtual {p0}, Li/m0/f/a$a;->d()V

    return-wide v3

    :cond_2
    return-wide p1

    .line 6
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const-string p1, "byteCount < 0: "

    .line 7
    invoke-static {p1, p2, p3}, Lf/b/a/a/a;->c(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    const-string p1, "sink"

    .line 8
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public close()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/m0/f/a$a;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Li/m0/f/a$f;->d:Z

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Li/m0/f/a$a;->d()V

    :cond_1
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Li/m0/f/a$a;->b:Z

    return-void
.end method
