.class public final Lf/i/a/a/e1/m;
.super Ljava/lang/Object;
.source "Download.java"


# instance fields
.field public final a:Lf/i/a/a/e1/u;

.field public final b:I

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:I

.field public final g:I

.field public final h:Lf/i/a/a/e1/t;


# direct methods
.method public constructor <init>(Lf/i/a/a/e1/u;IJJJII)V
    .locals 12

    .line 1
    new-instance v11, Lf/i/a/a/e1/t;

    invoke-direct {v11}, Lf/i/a/a/e1/t;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Lf/i/a/a/e1/m;-><init>(Lf/i/a/a/e1/u;IJJJIILf/i/a/a/e1/t;)V

    return-void
.end method

.method public constructor <init>(Lf/i/a/a/e1/u;IJJJIILf/i/a/a/e1/t;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p11, :cond_5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p10, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    if-eq p2, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 3
    :goto_2
    invoke-static {v2}, Lc/a/a/b/g/h;->v(Z)V

    if-eqz p9, :cond_4

    const/4 v2, 0x2

    if-eq p2, v2, :cond_3

    if-eqz p2, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    .line 4
    :goto_3
    invoke-static {v0}, Lc/a/a/b/g/h;->v(Z)V

    .line 5
    :cond_4
    iput-object p1, p0, Lf/i/a/a/e1/m;->a:Lf/i/a/a/e1/u;

    .line 6
    iput p2, p0, Lf/i/a/a/e1/m;->b:I

    .line 7
    iput-wide p3, p0, Lf/i/a/a/e1/m;->c:J

    .line 8
    iput-wide p5, p0, Lf/i/a/a/e1/m;->d:J

    .line 9
    iput-wide p7, p0, Lf/i/a/a/e1/m;->e:J

    .line 10
    iput p9, p0, Lf/i/a/a/e1/m;->f:I

    .line 11
    iput p10, p0, Lf/i/a/a/e1/m;->g:I

    .line 12
    iput-object p11, p0, Lf/i/a/a/e1/m;->h:Lf/i/a/a/e1/t;

    return-void

    :cond_5
    const/4 p1, 0x0

    .line 13
    throw p1
.end method
