.class public Lf/e/a/i/c/c;
.super Lf/d/a/j;
.source "GlideRequests.java"


# direct methods
.method public constructor <init>(Lf/d/a/c;Lf/d/a/p/h;Lf/d/a/p/m;Landroid/content/Context;)V
    .locals 0
    .param p1    # Lf/d/a/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lf/d/a/p/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lf/d/a/p/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lf/d/a/j;-><init>(Lf/d/a/c;Lf/d/a/p/h;Lf/d/a/p/m;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public j(Ljava/lang/Class;)Lf/d/a/i;
    .locals 3
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lf/e/a/i/c/b;

    iget-object v1, p0, Lf/d/a/j;->a:Lf/d/a/c;

    iget-object v2, p0, Lf/d/a/j;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, v2}, Lf/e/a/i/c/b;-><init>(Lf/d/a/c;Lf/d/a/j;Ljava/lang/Class;Landroid/content/Context;)V

    return-object v0
.end method

.method public k()Lf/d/a/i;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lf/d/a/j;->j(Ljava/lang/Class;)Lf/d/a/i;

    move-result-object v0

    sget-object v1, Lf/d/a/j;->l:Lf/d/a/s/e;

    invoke-virtual {v0, v1}, Lf/d/a/i;->C(Lf/d/a/s/a;)Lf/d/a/i;

    move-result-object v0

    .line 2
    check-cast v0, Lf/e/a/i/c/b;

    return-object v0
.end method

.method public l()Lf/d/a/i;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lf/d/a/j;->l()Lf/d/a/i;

    move-result-object v0

    check-cast v0, Lf/e/a/i/c/b;

    return-object v0
.end method

.method public n(Ljava/lang/Integer;)Lf/d/a/i;
    .locals 1
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
    invoke-virtual {p0}, Lf/d/a/j;->l()Lf/d/a/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lf/d/a/i;->H(Ljava/lang/Integer;)Lf/d/a/i;

    move-result-object p1

    .line 2
    check-cast p1, Lf/e/a/i/c/b;

    return-object p1
.end method

.method public o(Ljava/lang/Object;)Lf/d/a/i;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lf/d/a/j;->l()Lf/d/a/i;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lf/e/a/i/c/b;

    .line 2
    iput-object p1, v1, Lf/d/a/i;->F:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, v1, Lf/d/a/i;->I:Z

    .line 4
    check-cast v0, Lf/e/a/i/c/b;

    return-object v0
.end method

.method public p(Ljava/lang/String;)Lf/d/a/i;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lf/d/a/j;->l()Lf/d/a/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lf/d/a/i;->J(Ljava/lang/String;)Lf/d/a/i;

    .line 2
    check-cast v0, Lf/e/a/i/c/b;

    return-object v0
.end method

.method public s(Lf/d/a/s/e;)V
    .locals 1
    .param p1    # Lf/d/a/s/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lf/e/a/i/c/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Lf/d/a/j;->s(Lf/d/a/s/e;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lf/e/a/i/c/a;

    invoke-direct {v0}, Lf/e/a/i/c/a;-><init>()V

    invoke-virtual {v0, p1}, Lf/e/a/i/c/a;->D(Lf/d/a/s/a;)Lf/e/a/i/c/a;

    move-result-object p1

    invoke-super {p0, p1}, Lf/d/a/j;->s(Lf/d/a/s/e;)V

    :goto_0
    return-void
.end method
