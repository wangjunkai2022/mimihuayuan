.class public Lf/e/a/i/c/b;
.super Lf/d/a/i;
.source "GlideRequest.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Lf/d/a/i<",
        "TTranscodeType;>;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lf/d/a/c;Lf/d/a/j;Ljava/lang/Class;Landroid/content/Context;)V
    .locals 0
    .param p1    # Lf/d/a/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lf/d/a/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d/a/c;",
            "Lf/d/a/j;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lf/d/a/i;-><init>(Lf/d/a/c;Lf/d/a/j;Ljava/lang/Class;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public A(Z)Lf/d/a/s/a;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lf/d/a/s/a;->A(Z)Lf/d/a/s/a;

    move-result-object p1

    check-cast p1, Lf/e/a/i/c/b;

    return-object p1
.end method

.method public B(Lf/d/a/s/d;)Lf/d/a/i;
    .locals 1
    .param p1    # Lf/d/a/s/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lf/d/a/i;->G:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf/d/a/i;->G:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lf/d/a/i;->G:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0
.end method

.method public C(Lf/d/a/s/a;)Lf/d/a/i;
    .locals 0
    .param p1    # Lf/d/a/s/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lf/d/a/i;->C(Lf/d/a/s/a;)Lf/d/a/i;

    move-result-object p1

    check-cast p1, Lf/e/a/i/c/b;

    return-object p1
.end method

.method public bridge synthetic E()Lf/d/a/i;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lf/e/a/i/c/b;->L()Lf/e/a/i/c/b;

    move-result-object v0

    return-object v0
.end method

.method public H(Ljava/lang/Integer;)Lf/d/a/i;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lf/d/a/i;->H(Ljava/lang/Integer;)Lf/d/a/i;

    move-result-object p1

    check-cast p1, Lf/e/a/i/c/b;

    return-object p1
.end method

.method public I(Ljava/lang/Object;)Lf/d/a/i;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lf/d/a/i;->F:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lf/d/a/i;->I:Z

    return-object p0
.end method

.method public J(Ljava/lang/String;)Lf/d/a/i;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lf/d/a/i;->F:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lf/d/a/i;->I:Z

    return-object p0
.end method

.method public L()Lf/e/a/i/c/b;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf/e/a/i/c/b<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lf/d/a/i;->E()Lf/d/a/i;

    move-result-object v0

    check-cast v0, Lf/e/a/i/c/b;

    return-object v0
.end method

.method public a(Lf/d/a/s/a;)Lf/d/a/s/a;
    .locals 0
    .param p1    # Lf/d/a/s/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lf/d/a/i;->C(Lf/d/a/s/a;)Lf/d/a/i;

    move-result-object p1

    check-cast p1, Lf/e/a/i/c/b;

    return-object p1
.end method

.method public c()Lf/d/a/s/a;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lf/d/a/s/a;->c()Lf/d/a/s/a;

    move-result-object v0

    check-cast v0, Lf/e/a/i/c/b;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lf/e/a/i/c/b;->L()Lf/e/a/i/c/b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Lf/d/a/s/a;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lf/e/a/i/c/b;->L()Lf/e/a/i/c/b;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/Class;)Lf/d/a/s/a;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lf/d/a/s/a;->e(Ljava/lang/Class;)Lf/d/a/s/a;

    move-result-object p1

    check-cast p1, Lf/e/a/i/c/b;

    return-object p1
.end method

.method public f(Lf/d/a/o/n/k;)Lf/d/a/s/a;
    .locals 0
    .param p1    # Lf/d/a/o/n/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lf/d/a/s/a;->f(Lf/d/a/o/n/k;)Lf/d/a/s/a;

    move-result-object p1

    check-cast p1, Lf/e/a/i/c/b;

    return-object p1
.end method

.method public g(Lf/d/a/o/p/c/m;)Lf/d/a/s/a;
    .locals 0
    .param p1    # Lf/d/a/o/p/c/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lf/d/a/s/a;->g(Lf/d/a/o/p/c/m;)Lf/d/a/s/a;

    move-result-object p1

    check-cast p1, Lf/e/a/i/c/b;

    return-object p1
.end method

.method public h()Lf/d/a/s/a;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lf/d/a/s/a;->h()Lf/d/a/s/a;

    move-result-object v0

    check-cast v0, Lf/e/a/i/c/b;

    return-object v0
.end method

.method public i(Lf/d/a/o/b;)Lf/d/a/s/a;
    .locals 0
    .param p1    # Lf/d/a/o/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lf/d/a/s/a;->i(Lf/d/a/o/b;)Lf/d/a/s/a;

    move-result-object p1

    check-cast p1, Lf/e/a/i/c/b;

    return-object p1
.end method

.method public l()Lf/d/a/s/a;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lf/d/a/s/a;->l()Lf/d/a/s/a;

    move-result-object v0

    check-cast v0, Lf/e/a/i/c/b;

    return-object v0
.end method

.method public m()Lf/d/a/s/a;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lf/d/a/s/a;->m()Lf/d/a/s/a;

    move-result-object v0

    check-cast v0, Lf/e/a/i/c/b;

    return-object v0
.end method

.method public n()Lf/d/a/s/a;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lf/d/a/s/a;->n()Lf/d/a/s/a;

    move-result-object v0

    check-cast v0, Lf/e/a/i/c/b;

    return-object v0
.end method

.method public p(II)Lf/d/a/s/a;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lf/d/a/s/a;->p(II)Lf/d/a/s/a;

    move-result-object p1

    check-cast p1, Lf/e/a/i/c/b;

    return-object p1
.end method

.method public q(I)Lf/d/a/s/a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lf/d/a/s/a;->q(I)Lf/d/a/s/a;

    move-result-object p1

    check-cast p1, Lf/e/a/i/c/b;

    return-object p1
.end method

.method public r(Lf/d/a/f;)Lf/d/a/s/a;
    .locals 0
    .param p1    # Lf/d/a/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lf/d/a/s/a;->r(Lf/d/a/f;)Lf/d/a/s/a;

    move-result-object p1

    check-cast p1, Lf/e/a/i/c/b;

    return-object p1
.end method

.method public t(Lf/d/a/o/g;Ljava/lang/Object;)Lf/d/a/s/a;
    .locals 0
    .param p1    # Lf/d/a/o/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lf/d/a/s/a;->t(Lf/d/a/o/g;Ljava/lang/Object;)Lf/d/a/s/a;

    move-result-object p1

    check-cast p1, Lf/e/a/i/c/b;

    return-object p1
.end method

.method public u(Lf/d/a/o/f;)Lf/d/a/s/a;
    .locals 0
    .param p1    # Lf/d/a/o/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lf/d/a/s/a;->u(Lf/d/a/o/f;)Lf/d/a/s/a;

    move-result-object p1

    check-cast p1, Lf/e/a/i/c/b;

    return-object p1
.end method

.method public v(Z)Lf/d/a/s/a;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lf/d/a/s/a;->v(Z)Lf/d/a/s/a;

    move-result-object p1

    check-cast p1, Lf/e/a/i/c/b;

    return-object p1
.end method

.method public w(Lf/d/a/o/l;)Lf/d/a/s/a;
    .locals 1
    .param p1    # Lf/d/a/o/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lf/d/a/s/a;->x(Lf/d/a/o/l;Z)Lf/d/a/s/a;

    move-result-object p1

    .line 2
    check-cast p1, Lf/e/a/i/c/b;

    return-object p1
.end method
