.class public abstract Lf/i/a/a/h1/s0/l;
.super Lf/i/a/a/h1/s0/d;
.source "MediaChunk.java"


# instance fields
.field public final i:J


# direct methods
.method public constructor <init>(Lf/i/a/a/l1/m;Lf/i/a/a/l1/p;Lf/i/a/a/b0;ILjava/lang/Object;JJJ)V
    .locals 11

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    .line 1
    invoke-direct/range {v0 .. v10}, Lf/i/a/a/h1/s0/d;-><init>(Lf/i/a/a/l1/m;Lf/i/a/a/l1/p;ILf/i/a/a/b0;ILjava/lang/Object;JJ)V

    move-object v0, p0

    if-eqz p3, :cond_0

    move-wide/from16 v1, p10

    .line 2
    iput-wide v1, v0, Lf/i/a/a/h1/s0/l;->i:J

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 3
    throw v1
.end method


# virtual methods
.method public c()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lf/i/a/a/h1/s0/l;->i:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    :cond_0
    return-wide v2
.end method

.method public abstract d()Z
.end method
