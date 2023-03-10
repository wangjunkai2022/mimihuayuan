.class public final Lf/i/a/a/j1/e;
.super Lf/i/a/a/j1/c;
.source "FixedTrackSelection.java"


# instance fields
.field public final g:I

.field public final h:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf/i/a/a/h1/o0;IILjava/lang/Object;)V
    .locals 2
    .param p4    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 1
    invoke-direct {p0, p1, v0}, Lf/i/a/a/j1/c;-><init>(Lf/i/a/a/h1/o0;[I)V

    .line 2
    iput p3, p0, Lf/i/a/a/j1/e;->g:I

    .line 3
    iput-object p4, p0, Lf/i/a/a/j1/e;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public h(JJJLjava/util/List;[Lf/i/a/a/h1/s0/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/util/List<",
            "+",
            "Lf/i/a/a/h1/s0/l;",
            ">;[",
            "Lf/i/a/a/h1/s0/m;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    iget v0, p0, Lf/i/a/a/j1/e;->g:I

    return v0
.end method

.method public m()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public p()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/j1/e;->h:Ljava/lang/Object;

    return-object v0
.end method
