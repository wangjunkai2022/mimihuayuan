.class public final Lf/i/a/a/b1/y/c;
.super Ljava/lang/Object;
.source "WavHeaderReader.java"


# instance fields
.field public final a:I

.field public final b:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lf/i/a/a/b1/y/c;->a:I

    .line 3
    iput-wide p2, p0, Lf/i/a/a/b1/y/c;->b:J

    return-void
.end method

.method public static a(Lf/i/a/a/b1/d;Lf/i/a/a/m1/u;)Lf/i/a/a/b1/y/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lf/i/a/a/m1/u;->a:[B

    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 2
    invoke-virtual {p0, v0, v1, v2, v1}, Lf/i/a/a/b1/d;->d([BIIZ)Z

    .line 3
    invoke-virtual {p1, v1}, Lf/i/a/a/m1/u;->A(I)V

    .line 4
    invoke-virtual {p1}, Lf/i/a/a/m1/u;->d()I

    move-result p0

    .line 5
    invoke-virtual {p1}, Lf/i/a/a/m1/u;->g()J

    move-result-wide v0

    .line 6
    new-instance p1, Lf/i/a/a/b1/y/c;

    invoke-direct {p1, p0, v0, v1}, Lf/i/a/a/b1/y/c;-><init>(IJ)V

    return-object p1
.end method
