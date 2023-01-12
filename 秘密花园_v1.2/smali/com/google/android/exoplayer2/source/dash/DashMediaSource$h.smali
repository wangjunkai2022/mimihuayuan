.class public final Lcom/google/android/exoplayer2/source/dash/DashMediaSource$h;
.super Ljava/lang/Object;
.source "DashMediaSource.java"

# interfaces
.implements Lf/i/a/a/l1/c0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/DashMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/i/a/a/l1/c0$b<",
        "Lf/i/a/a/l1/e0<",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/source/dash/DashMediaSource;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;Lcom/google/android/exoplayer2/source/dash/DashMediaSource$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$h;->a:Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public k(Lf/i/a/a/l1/c0$e;JJZ)V
    .locals 6

    .line 1
    move-object v1, p1

    check-cast v1, Lf/i/a/a/l1/e0;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$h;->a:Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->q(Lf/i/a/a/l1/e0;JJ)V

    return-void
.end method

.method public p(Lf/i/a/a/l1/c0$e;JJLjava/io/IOException;I)Lf/i/a/a/l1/c0$c;
    .locals 16

    .line 1
    move-object/from16 v0, p1

    check-cast v0, Lf/i/a/a/l1/e0;

    move-object/from16 v1, p0

    .line 2
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$h;->a:Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    .line 3
    iget-object v3, v2, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->m:Lf/i/a/a/h1/f0$a;

    iget-object v4, v0, Lf/i/a/a/l1/e0;->a:Lf/i/a/a/l1/p;

    .line 4
    iget-object v5, v0, Lf/i/a/a/l1/e0;->c:Lf/i/a/a/l1/g0;

    .line 5
    iget-object v6, v5, Lf/i/a/a/l1/g0;->c:Landroid/net/Uri;

    .line 6
    iget-object v7, v5, Lf/i/a/a/l1/g0;->d:Ljava/util/Map;

    .line 7
    iget v0, v0, Lf/i/a/a/l1/e0;->b:I

    .line 8
    iget-wide v12, v5, Lf/i/a/a/l1/g0;->b:J

    const/4 v15, 0x1

    move-object v5, v6

    move-object v6, v7

    move v7, v0

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    move-object/from16 v14, p6

    .line 9
    invoke-virtual/range {v3 .. v15}, Lf/i/a/a/h1/f0$a;->u(Lf/i/a/a/l1/p;Landroid/net/Uri;Ljava/util/Map;IJJJLjava/io/IOException;Z)V

    const/4 v0, 0x1

    .line 10
    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->s(Z)V

    .line 11
    sget-object v0, Lf/i/a/a/l1/c0;->d:Lf/i/a/a/l1/c0$c;

    return-object v0
.end method

.method public r(Lf/i/a/a/l1/c0$e;JJ)V
    .locals 14

    .line 1
    move-object v0, p1

    check-cast v0, Lf/i/a/a/l1/e0;

    move-object v1, p0

    .line 2
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$h;->a:Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    .line 3
    iget-object v3, v2, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->m:Lf/i/a/a/h1/f0$a;

    iget-object v4, v0, Lf/i/a/a/l1/e0;->a:Lf/i/a/a/l1/p;

    .line 4
    iget-object v5, v0, Lf/i/a/a/l1/e0;->c:Lf/i/a/a/l1/g0;

    .line 5
    iget-object v6, v5, Lf/i/a/a/l1/g0;->c:Landroid/net/Uri;

    .line 6
    iget-object v7, v5, Lf/i/a/a/l1/g0;->d:Ljava/util/Map;

    .line 7
    iget v8, v0, Lf/i/a/a/l1/e0;->b:I

    .line 8
    iget-wide v12, v5, Lf/i/a/a/l1/g0;->b:J

    move-object v5, v6

    move-object v6, v7

    move v7, v8

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    .line 9
    invoke-virtual/range {v3 .. v13}, Lf/i/a/a/h1/f0$a;->r(Lf/i/a/a/l1/p;Landroid/net/Uri;Ljava/util/Map;IJJJ)V

    .line 10
    iget-object v0, v0, Lf/i/a/a/l1/e0;->e:Ljava/lang/Object;

    .line 11
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v3, v3, p2

    .line 12
    iput-wide v3, v2, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->H:J

    const/4 v0, 0x1

    .line 13
    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->s(Z)V

    return-void
.end method
