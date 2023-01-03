.class public final Lf/i/a/a/i1/q/b;
.super Ljava/lang/Object;
.source "SubripSubtitle.java"

# interfaces
.implements Lf/i/a/a/i1/e;


# instance fields
.field public final a:[Lf/i/a/a/i1/b;

.field public final b:[J


# direct methods
.method public constructor <init>([Lf/i/a/a/i1/b;[J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/i/a/a/i1/q/b;->a:[Lf/i/a/a/i1/b;

    .line 3
    iput-object p2, p0, Lf/i/a/a/i1/q/b;->b:[J

    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/i1/q/b;->b:[J

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1, v1}, Lf/i/a/a/m1/h0;->c([JJZZ)I

    move-result p1

    .line 2
    iget-object p2, p0, Lf/i/a/a/i1/q/b;->b:[J

    array-length p2, p2

    if-ge p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public b(I)J
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-static {v2}, Lc/a/a/b/g/h;->m(Z)V

    .line 2
    iget-object v2, p0, Lf/i/a/a/i1/q/b;->b:[J

    array-length v2, v2

    if-ge p1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lc/a/a/b/g/h;->m(Z)V

    .line 3
    iget-object v0, p0, Lf/i/a/a/i1/q/b;->b:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public c(J)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lf/i/a/a/i1/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/i1/q/b;->b:[J

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v1, v2}, Lf/i/a/a/m1/h0;->f([JJZZ)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    .line 2
    iget-object p2, p0, Lf/i/a/a/i1/q/b;->a:[Lf/i/a/a/i1/b;

    aget-object v0, p2, p1

    sget-object v1, Lf/i/a/a/i1/b;->o:Lf/i/a/a/i1/b;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    aget-object p1, p2, p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/i1/q/b;->b:[J

    array-length v0, v0

    return v0
.end method
