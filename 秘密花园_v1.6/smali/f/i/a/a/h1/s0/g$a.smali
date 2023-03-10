.class public final Lf/i/a/a/h1/s0/g$a;
.super Ljava/lang/Object;
.source "ChunkSampleStream.java"

# interfaces
.implements Lf/i/a/a/h1/k0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/h1/s0/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Lf/i/a/a/h1/s0/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/i/a/a/h1/s0/g<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Lf/i/a/a/h1/j0;

.field public final c:I

.field public d:Z

.field public final synthetic e:Lf/i/a/a/h1/s0/g;


# direct methods
.method public constructor <init>(Lf/i/a/a/h1/s0/g;Lf/i/a/a/h1/s0/g;Lf/i/a/a/h1/j0;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i/a/a/h1/s0/g<",
            "TT;>;",
            "Lf/i/a/a/h1/j0;",
            "I)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lf/i/a/a/h1/s0/g$a;->e:Lf/i/a/a/h1/s0/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lf/i/a/a/h1/s0/g$a;->a:Lf/i/a/a/h1/s0/g;

    .line 3
    iput-object p3, p0, Lf/i/a/a/h1/s0/g$a;->b:Lf/i/a/a/h1/j0;

    .line 4
    iput p4, p0, Lf/i/a/a/h1/s0/g$a;->c:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public final b()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lf/i/a/a/h1/s0/g$a;->d:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/i/a/a/h1/s0/g$a;->e:Lf/i/a/a/h1/s0/g;

    .line 3
    iget-object v1, v0, Lf/i/a/a/h1/s0/g;->g:Lf/i/a/a/h1/f0$a;

    .line 4
    iget-object v2, v0, Lf/i/a/a/h1/s0/g;->b:[I

    .line 5
    iget v3, p0, Lf/i/a/a/h1/s0/g$a;->c:I

    aget v2, v2, v3

    .line 6
    iget-object v4, v0, Lf/i/a/a/h1/s0/g;->c:[Lf/i/a/a/b0;

    .line 7
    aget-object v3, v4, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 8
    iget-wide v6, v0, Lf/i/a/a/h1/s0/g;->s:J

    .line 9
    invoke-virtual/range {v1 .. v7}, Lf/i/a/a/h1/f0$a;->b(ILf/i/a/a/b0;ILjava/lang/Object;J)V

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lf/i/a/a/h1/s0/g$a;->d:Z

    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/s0/g$a;->e:Lf/i/a/a/h1/s0/g;

    .line 2
    iget-object v0, v0, Lf/i/a/a/h1/s0/g;->d:[Z

    .line 3
    iget v1, p0, Lf/i/a/a/h1/s0/g$a;->c:I

    aget-boolean v0, v0, v1

    invoke-static {v0}, Lc/a/a/b/g/h;->v(Z)V

    .line 4
    iget-object v0, p0, Lf/i/a/a/h1/s0/g$a;->e:Lf/i/a/a/h1/s0/g;

    .line 5
    iget-object v0, v0, Lf/i/a/a/h1/s0/g;->d:[Z

    .line 6
    iget v1, p0, Lf/i/a/a/h1/s0/g$a;->c:I

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    return-void
.end method

.method public d()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/s0/g$a;->e:Lf/i/a/a/h1/s0/g;

    iget-boolean v1, v0, Lf/i/a/a/h1/s0/g;->v:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lf/i/a/a/h1/s0/g;->y()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lf/i/a/a/h1/s0/g$a;->b:Lf/i/a/a/h1/j0;

    invoke-virtual {v0}, Lf/i/a/a/h1/j0;->o()Z

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

.method public i(Lf/i/a/a/c0;Lf/i/a/a/y0/e;Z)I
    .locals 7

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/s0/g$a;->e:Lf/i/a/a/h1/s0/g;

    invoke-virtual {v0}, Lf/i/a/a/h1/s0/g;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x3

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lf/i/a/a/h1/s0/g$a;->b()V

    .line 3
    iget-object v0, p0, Lf/i/a/a/h1/s0/g$a;->b:Lf/i/a/a/h1/j0;

    iget-object v1, p0, Lf/i/a/a/h1/s0/g$a;->e:Lf/i/a/a/h1/s0/g;

    iget-boolean v4, v1, Lf/i/a/a/h1/s0/g;->v:Z

    iget-wide v5, v1, Lf/i/a/a/h1/s0/g;->u:J

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lf/i/a/a/h1/j0;->s(Lf/i/a/a/c0;Lf/i/a/a/y0/e;ZZJ)I

    move-result p1

    return p1
.end method

.method public q(J)I
    .locals 4

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/s0/g$a;->e:Lf/i/a/a/h1/s0/g;

    invoke-virtual {v0}, Lf/i/a/a/h1/s0/g;->y()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lf/i/a/a/h1/s0/g$a;->b()V

    .line 3
    iget-object v0, p0, Lf/i/a/a/h1/s0/g$a;->e:Lf/i/a/a/h1/s0/g;

    iget-boolean v0, v0, Lf/i/a/a/h1/s0/g;->v:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lf/i/a/a/h1/s0/g$a;->b:Lf/i/a/a/h1/j0;

    invoke-virtual {v0}, Lf/i/a/a/h1/j0;->l()J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    .line 4
    iget-object p1, p0, Lf/i/a/a/h1/s0/g$a;->b:Lf/i/a/a/h1/j0;

    invoke-virtual {p1}, Lf/i/a/a/h1/j0;->f()I

    move-result v1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lf/i/a/a/h1/s0/g$a;->b:Lf/i/a/a/h1/j0;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, p2, v2, v2}, Lf/i/a/a/h1/j0;->e(JZZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    move v1, p1

    :goto_0
    return v1
.end method
