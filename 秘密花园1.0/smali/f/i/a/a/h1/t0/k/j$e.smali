.class public Lf/i/a/a/h1/t0/k/j$e;
.super Lf/i/a/a/h1/t0/k/j;
.source "SegmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/h1/t0/k/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final d:J

.field public final e:J


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v5}, Lf/i/a/a/h1/t0/k/j;-><init>(Lf/i/a/a/h1/t0/k/h;JJ)V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lf/i/a/a/h1/t0/k/j$e;->d:J

    .line 3
    iput-wide v0, p0, Lf/i/a/a/h1/t0/k/j$e;->e:J

    return-void
.end method

.method public constructor <init>(Lf/i/a/a/h1/t0/k/h;JJJJ)V
    .locals 0

    .line 4
    invoke-direct/range {p0 .. p5}, Lf/i/a/a/h1/t0/k/j;-><init>(Lf/i/a/a/h1/t0/k/h;JJ)V

    .line 5
    iput-wide p6, p0, Lf/i/a/a/h1/t0/k/j$e;->d:J

    .line 6
    iput-wide p8, p0, Lf/i/a/a/h1/t0/k/j$e;->e:J

    return-void
.end method
