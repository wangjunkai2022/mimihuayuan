.class public final Lf/i/a/a/j1/d$b;
.super Ljava/lang/Object;
.source "DefaultTrackSelector.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/j1/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lf/i/a/a/j1/d$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:Lf/i/a/a/j1/d$c;

.field public final c:Z

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:Z

.field public final h:I

.field public final i:I

.field public final j:I


# direct methods
.method public constructor <init>(Lf/i/a/a/b0;Lf/i/a/a/j1/d$c;I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lf/i/a/a/j1/d$b;->b:Lf/i/a/a/j1/d$c;

    const/4 v0, 0x0

    .line 3
    invoke-static {p3, v0}, Lf/i/a/a/j1/d;->f(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lf/i/a/a/j1/d$b;->c:Z

    .line 4
    iget-object p3, p2, Lf/i/a/a/j1/l;->a:Ljava/lang/String;

    invoke-static {p1, p3}, Lf/i/a/a/j1/d;->d(Lf/i/a/a/b0;Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lf/i/a/a/j1/d$b;->d:I

    .line 5
    iget p3, p1, Lf/i/a/a/b0;->c:I

    const/4 v1, 0x1

    and-int/2addr p3, v1

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput-boolean p3, p0, Lf/i/a/a/j1/d$b;->g:Z

    .line 6
    iget p3, p1, Lf/i/a/a/b0;->v:I

    iput p3, p0, Lf/i/a/a/j1/d$b;->h:I

    .line 7
    iget p3, p1, Lf/i/a/a/b0;->w:I

    iput p3, p0, Lf/i/a/a/j1/d$b;->i:I

    .line 8
    iget p3, p1, Lf/i/a/a/b0;->e:I

    iput p3, p0, Lf/i/a/a/j1/d$b;->j:I

    const/4 v2, -0x1

    if-eq p3, v2, :cond_1

    .line 9
    iget v3, p2, Lf/i/a/a/j1/d$c;->q:I

    if-gt p3, v3, :cond_2

    :cond_1
    iget p3, p1, Lf/i/a/a/b0;->v:I

    if-eq p3, v2, :cond_3

    iget p2, p2, Lf/i/a/a/j1/d$c;->p:I

    if-gt p3, p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_1
    iput-boolean v1, p0, Lf/i/a/a/j1/d$b;->a:Z

    .line 10
    invoke-static {}, Lf/i/a/a/m1/h0;->M()[Ljava/lang/String;

    move-result-object p2

    const p3, 0x7fffffff

    const/4 v1, 0x0

    .line 11
    :goto_2
    array-length v2, p2

    if-ge v1, v2, :cond_5

    .line 12
    aget-object v2, p2, v1

    invoke-static {p1, v2}, Lf/i/a/a/j1/d;->d(Lf/i/a/a/b0;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_4

    move p3, v1

    move v0, v2

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 13
    :cond_5
    :goto_3
    iput p3, p0, Lf/i/a/a/j1/d$b;->e:I

    .line 14
    iput v0, p0, Lf/i/a/a/j1/d$b;->f:I

    return-void
.end method


# virtual methods
.method public a(Lf/i/a/a/j1/d$b;)I
    .locals 4
    .param p1    # Lf/i/a/a/j1/d$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lf/i/a/a/j1/d$b;->c:Z

    iget-boolean v1, p1, Lf/i/a/a/j1/d$b;->c:Z

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    return v2

    .line 2
    :cond_1
    iget v0, p0, Lf/i/a/a/j1/d$b;->d:I

    iget v1, p1, Lf/i/a/a/j1/d$b;->d:I

    if-eq v0, v1, :cond_2

    .line 3
    invoke-static {v0, v1}, Lf/i/a/a/j1/d;->b(II)I

    move-result p1

    return p1

    .line 4
    :cond_2
    iget-boolean v0, p0, Lf/i/a/a/j1/d$b;->a:Z

    iget-boolean v1, p1, Lf/i/a/a/j1/d$b;->a:Z

    if-eq v0, v1, :cond_4

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, -0x1

    :goto_1
    return v2

    .line 5
    :cond_4
    iget-object v0, p0, Lf/i/a/a/j1/d$b;->b:Lf/i/a/a/j1/d$c;

    iget-boolean v0, v0, Lf/i/a/a/j1/d$c;->u:Z

    if-eqz v0, :cond_6

    .line 6
    iget v0, p0, Lf/i/a/a/j1/d$b;->j:I

    iget v1, p1, Lf/i/a/a/j1/d$b;->j:I

    .line 7
    invoke-static {v0, v1}, Lf/i/a/a/j1/d;->c(II)I

    move-result v0

    if-eqz v0, :cond_6

    if-lez v0, :cond_5

    const/4 v2, -0x1

    :cond_5
    return v2

    .line 8
    :cond_6
    iget-boolean v0, p0, Lf/i/a/a/j1/d$b;->g:Z

    iget-boolean v1, p1, Lf/i/a/a/j1/d$b;->g:Z

    if-eq v0, v1, :cond_8

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    const/4 v2, -0x1

    :goto_2
    return v2

    .line 9
    :cond_8
    iget v0, p0, Lf/i/a/a/j1/d$b;->e:I

    iget v1, p1, Lf/i/a/a/j1/d$b;->e:I

    if-eq v0, v1, :cond_9

    .line 10
    invoke-static {v0, v1}, Lf/i/a/a/j1/d;->b(II)I

    move-result p1

    neg-int p1, p1

    return p1

    .line 11
    :cond_9
    iget v0, p0, Lf/i/a/a/j1/d$b;->f:I

    iget v1, p1, Lf/i/a/a/j1/d$b;->f:I

    if-eq v0, v1, :cond_a

    .line 12
    invoke-static {v0, v1}, Lf/i/a/a/j1/d;->b(II)I

    move-result p1

    return p1

    .line 13
    :cond_a
    iget-boolean v0, p0, Lf/i/a/a/j1/d$b;->a:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lf/i/a/a/j1/d$b;->c:Z

    if-eqz v0, :cond_b

    goto :goto_3

    :cond_b
    const/4 v2, -0x1

    .line 14
    :goto_3
    iget v0, p0, Lf/i/a/a/j1/d$b;->h:I

    iget v1, p1, Lf/i/a/a/j1/d$b;->h:I

    if-eq v0, v1, :cond_c

    .line 15
    invoke-static {v0, v1}, Lf/i/a/a/j1/d;->b(II)I

    move-result p1

    mul-int p1, p1, v2

    return p1

    .line 16
    :cond_c
    iget v0, p0, Lf/i/a/a/j1/d$b;->i:I

    iget v1, p1, Lf/i/a/a/j1/d$b;->i:I

    if-eq v0, v1, :cond_d

    .line 17
    invoke-static {v0, v1}, Lf/i/a/a/j1/d;->b(II)I

    move-result p1

    mul-int p1, p1, v2

    return p1

    .line 18
    :cond_d
    iget v0, p0, Lf/i/a/a/j1/d$b;->j:I

    iget p1, p1, Lf/i/a/a/j1/d$b;->j:I

    invoke-static {v0, p1}, Lf/i/a/a/j1/d;->b(II)I

    move-result p1

    mul-int p1, p1, v2

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lf/i/a/a/j1/d$b;

    invoke-virtual {p0, p1}, Lf/i/a/a/j1/d$b;->a(Lf/i/a/a/j1/d$b;)I

    move-result p1

    return p1
.end method
