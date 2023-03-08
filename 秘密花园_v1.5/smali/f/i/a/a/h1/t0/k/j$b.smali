.class public Lf/i/a/a/h1/t0/k/j$b;
.super Lf/i/a/a/h1/t0/k/j$a;
.source "SegmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/h1/t0/k/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/i/a/a/h1/t0/k/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf/i/a/a/h1/t0/k/h;JJJJLjava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i/a/a/h1/t0/k/h;",
            "JJJJ",
            "Ljava/util/List<",
            "Lf/i/a/a/h1/t0/k/j$d;",
            ">;",
            "Ljava/util/List<",
            "Lf/i/a/a/h1/t0/k/h;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p10}, Lf/i/a/a/h1/t0/k/j$a;-><init>(Lf/i/a/a/h1/t0/k/h;JJJJLjava/util/List;)V

    .line 2
    iput-object p11, p0, Lf/i/a/a/h1/t0/k/j$b;->g:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public b(J)I
    .locals 0

    .line 1
    iget-object p1, p0, Lf/i/a/a/h1/t0/k/j$b;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public d(Lf/i/a/a/h1/t0/k/i;J)Lf/i/a/a/h1/t0/k/h;
    .locals 2

    .line 1
    iget-object p1, p0, Lf/i/a/a/h1/t0/k/j$b;->g:Ljava/util/List;

    iget-wide v0, p0, Lf/i/a/a/h1/t0/k/j$a;->d:J

    sub-long/2addr p2, v0

    long-to-int p3, p2

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/i/a/a/h1/t0/k/h;

    return-object p1
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
