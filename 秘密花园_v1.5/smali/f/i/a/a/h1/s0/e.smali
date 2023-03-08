.class public final Lf/i/a/a/h1/s0/e;
.super Ljava/lang/Object;
.source "ChunkExtractorWrapper.java"

# interfaces
.implements Lf/i/a/a/b1/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/h1/s0/e$a;,
        Lf/i/a/a/h1/s0/e$b;
    }
.end annotation


# instance fields
.field public final a:Lf/i/a/a/b1/g;

.field public final b:I

.field public final c:Lf/i/a/a/b0;

.field public final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lf/i/a/a/h1/s0/e$a;",
            ">;"
        }
    .end annotation
.end field

.field public e:Z

.field public f:Lf/i/a/a/h1/s0/e$b;

.field public g:J

.field public h:Lf/i/a/a/b1/n;

.field public i:[Lf/i/a/a/b0;


# direct methods
.method public constructor <init>(Lf/i/a/a/b1/g;ILf/i/a/a/b0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/i/a/a/h1/s0/e;->a:Lf/i/a/a/b1/g;

    .line 3
    iput p2, p0, Lf/i/a/a/h1/s0/e;->b:I

    .line 4
    iput-object p3, p0, Lf/i/a/a/h1/s0/e;->c:Lf/i/a/a/b0;

    .line 5
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lf/i/a/a/h1/s0/e;->d:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public a(Lf/i/a/a/b1/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/i/a/a/h1/s0/e;->h:Lf/i/a/a/b1/n;

    return-void
.end method

.method public b(Lf/i/a/a/h1/s0/e$b;JJ)V
    .locals 6
    .param p1    # Lf/i/a/a/h1/s0/e$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lf/i/a/a/h1/s0/e;->f:Lf/i/a/a/h1/s0/e$b;

    .line 2
    iput-wide p4, p0, Lf/i/a/a/h1/s0/e;->g:J

    .line 3
    iget-boolean v0, p0, Lf/i/a/a/h1/s0/e;->e:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v3, 0x0

    if-nez v0, :cond_1

    .line 4
    iget-object p1, p0, Lf/i/a/a/h1/s0/e;->a:Lf/i/a/a/b1/g;

    invoke-interface {p1, p0}, Lf/i/a/a/b1/g;->d(Lf/i/a/a/b1/h;)V

    cmp-long p1, p2, v1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lf/i/a/a/h1/s0/e;->a:Lf/i/a/a/b1/g;

    invoke-interface {p1, v3, v4, p2, p3}, Lf/i/a/a/b1/g;->f(JJ)V

    :cond_0
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lf/i/a/a/h1/s0/e;->e:Z

    goto :goto_1

    .line 7
    :cond_1
    iget-object v0, p0, Lf/i/a/a/h1/s0/e;->a:Lf/i/a/a/b1/g;

    cmp-long v5, p2, v1

    if-nez v5, :cond_2

    move-wide p2, v3

    :cond_2
    invoke-interface {v0, v3, v4, p2, p3}, Lf/i/a/a/b1/g;->f(JJ)V

    const/4 p2, 0x0

    .line 8
    :goto_0
    iget-object p3, p0, Lf/i/a/a/h1/s0/e;->d:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge p2, p3, :cond_3

    .line 9
    iget-object p3, p0, Lf/i/a/a/h1/s0/e;->d:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lf/i/a/a/h1/s0/e$a;

    invoke-virtual {p3, p1, p4, p5}, Lf/i/a/a/h1/s0/e$a;->e(Lf/i/a/a/h1/s0/e$b;J)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/s0/e;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v0, v0, [Lf/i/a/a/b0;

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lf/i/a/a/h1/s0/e;->d:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v2, p0, Lf/i/a/a/h1/s0/e;->d:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/i/a/a/h1/s0/e$a;

    iget-object v2, v2, Lf/i/a/a/h1/s0/e$a;->e:Lf/i/a/a/b0;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iput-object v0, p0, Lf/i/a/a/h1/s0/e;->i:[Lf/i/a/a/b0;

    return-void
.end method

.method public q(II)Lf/i/a/a/b1/p;
    .locals 3

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/s0/e;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/a/a/h1/s0/e$a;

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lf/i/a/a/h1/s0/e;->i:[Lf/i/a/a/b0;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lc/a/a/b/g/h;->v(Z)V

    .line 3
    new-instance v0, Lf/i/a/a/h1/s0/e$a;

    iget v1, p0, Lf/i/a/a/h1/s0/e;->b:I

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lf/i/a/a/h1/s0/e;->c:Lf/i/a/a/b0;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-direct {v0, p1, p2, v1}, Lf/i/a/a/h1/s0/e$a;-><init>(IILf/i/a/a/b0;)V

    .line 4
    iget-object p2, p0, Lf/i/a/a/h1/s0/e;->f:Lf/i/a/a/h1/s0/e$b;

    iget-wide v1, p0, Lf/i/a/a/h1/s0/e;->g:J

    invoke-virtual {v0, p2, v1, v2}, Lf/i/a/a/h1/s0/e$a;->e(Lf/i/a/a/h1/s0/e$b;J)V

    .line 5
    iget-object p2, p0, Lf/i/a/a/h1/s0/e;->d:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    return-object v0
.end method
