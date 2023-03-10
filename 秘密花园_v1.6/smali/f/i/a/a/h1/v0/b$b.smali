.class public final Lf/i/a/a/h1/v0/b$b;
.super Lf/i/a/a/h1/s0/b;
.source "DefaultSsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/h1/v0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Lf/i/a/a/h1/v0/e/a$b;II)V
    .locals 2

    int-to-long p2, p3

    .line 1
    iget p1, p1, Lf/i/a/a/h1/v0/e/a$b;->k:I

    add-int/lit8 p1, p1, -0x1

    int-to-long v0, p1

    invoke-direct {p0, p2, p3, v0, v1}, Lf/i/a/a/h1/s0/b;-><init>(JJ)V

    return-void
.end method
