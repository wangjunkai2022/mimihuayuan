.class public final Lf/i/a/a/h1/u0/g$d;
.super Lf/i/a/a/h1/s0/b;
.source "HlsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/h1/u0/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# direct methods
.method public constructor <init>(Lf/i/a/a/h1/u0/t/f;JI)V
    .locals 2

    int-to-long p2, p4

    .line 1
    iget-object p1, p1, Lf/i/a/a/h1/u0/t/f;->o:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    int-to-long v0, p1

    invoke-direct {p0, p2, p3, v0, v1}, Lf/i/a/a/h1/s0/b;-><init>(JJ)V

    return-void
.end method
