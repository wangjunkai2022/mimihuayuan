.class public final Li/m0/f/a$e;
.super Ljava/lang/Object;
.source "Http1ExchangeCodec.kt"

# interfaces
.implements Lj/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/m0/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation


# instance fields
.field public final a:Lj/n;

.field public b:Z

.field public final synthetic c:Li/m0/f/a;


# direct methods
.method public constructor <init>(Li/m0/f/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Li/m0/f/a$e;->c:Li/m0/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lj/n;

    .line 3
    iget-object p1, p1, Li/m0/f/a;->g:Lj/i;

    .line 4
    invoke-interface {p1}, Lj/y;->i()Lj/b0;

    move-result-object p1

    invoke-direct {v0, p1}, Lj/n;-><init>(Lj/b0;)V

    iput-object v0, p0, Li/m0/f/a$e;->a:Lj/n;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Li/m0/f/a$e;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Li/m0/f/a$e;->b:Z

    .line 3
    iget-object v0, p0, Li/m0/f/a$e;->c:Li/m0/f/a;

    iget-object v1, p0, Li/m0/f/a$e;->a:Lj/n;

    invoke-static {v0, v1}, Li/m0/f/a;->i(Li/m0/f/a;Lj/n;)V

    .line 4
    iget-object v0, p0, Li/m0/f/a$e;->c:Li/m0/f/a;

    const/4 v1, 0x3

    .line 5
    iput v1, v0, Li/m0/f/a;->a:I

    return-void
.end method

.method public flush()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/m0/f/a$e;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Li/m0/f/a$e;->c:Li/m0/f/a;

    .line 3
    iget-object v0, v0, Li/m0/f/a;->g:Lj/i;

    .line 4
    invoke-interface {v0}, Lj/i;->flush()V

    return-void
.end method

.method public i()Lj/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Li/m0/f/a$e;->a:Lj/n;

    return-object v0
.end method

.method public j(Lj/g;J)V
    .locals 7

    if-eqz p1, :cond_1

    .line 1
    iget-boolean v0, p0, Li/m0/f/a$e;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-wide v1, p1, Lj/g;->b:J

    const-wide/16 v3, 0x0

    move-wide v5, p2

    .line 3
    invoke-static/range {v1 .. v6}, Li/m0/b;->e(JJJ)V

    .line 4
    iget-object v0, p0, Li/m0/f/a$e;->c:Li/m0/f/a;

    .line 5
    iget-object v0, v0, Li/m0/f/a;->g:Lj/i;

    .line 6
    invoke-interface {v0, p1, p2, p3}, Lj/y;->j(Lj/g;J)V

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string p1, "source"

    .line 8
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
