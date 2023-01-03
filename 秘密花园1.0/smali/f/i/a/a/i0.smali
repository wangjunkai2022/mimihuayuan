.class public final Lf/i/a/a/i0;
.super Ljava/lang/Object;
.source "PlaybackInfo.java"


# static fields
.field public static final n:Lf/i/a/a/h1/e0$a;


# instance fields
.field public final a:Lf/i/a/a/u0;

.field public final b:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final c:Lf/i/a/a/h1/e0$a;

.field public final d:J

.field public final e:J

.field public final f:I

.field public final g:Z

.field public final h:Lf/i/a/a/h1/p0;

.field public final i:Lf/i/a/a/j1/n;

.field public final j:Lf/i/a/a/h1/e0$a;

.field public volatile k:J

.field public volatile l:J

.field public volatile m:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lf/i/a/a/h1/e0$a;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Lf/i/a/a/h1/e0$a;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lf/i/a/a/i0;->n:Lf/i/a/a/h1/e0$a;

    return-void
.end method

.method public constructor <init>(Lf/i/a/a/u0;Ljava/lang/Object;Lf/i/a/a/h1/e0$a;JJIZLf/i/a/a/h1/p0;Lf/i/a/a/j1/n;Lf/i/a/a/h1/e0$a;JJJ)V
    .locals 3
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lf/i/a/a/i0;->a:Lf/i/a/a/u0;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lf/i/a/a/i0;->b:Ljava/lang/Object;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lf/i/a/a/i0;->c:Lf/i/a/a/h1/e0$a;

    move-wide v1, p4

    .line 5
    iput-wide v1, v0, Lf/i/a/a/i0;->d:J

    move-wide v1, p6

    .line 6
    iput-wide v1, v0, Lf/i/a/a/i0;->e:J

    move v1, p8

    .line 7
    iput v1, v0, Lf/i/a/a/i0;->f:I

    move v1, p9

    .line 8
    iput-boolean v1, v0, Lf/i/a/a/i0;->g:Z

    move-object v1, p10

    .line 9
    iput-object v1, v0, Lf/i/a/a/i0;->h:Lf/i/a/a/h1/p0;

    move-object v1, p11

    .line 10
    iput-object v1, v0, Lf/i/a/a/i0;->i:Lf/i/a/a/j1/n;

    move-object v1, p12

    .line 11
    iput-object v1, v0, Lf/i/a/a/i0;->j:Lf/i/a/a/h1/e0$a;

    move-wide/from16 v1, p13

    .line 12
    iput-wide v1, v0, Lf/i/a/a/i0;->k:J

    move-wide/from16 v1, p15

    .line 13
    iput-wide v1, v0, Lf/i/a/a/i0;->l:J

    move-wide/from16 v1, p17

    .line 14
    iput-wide v1, v0, Lf/i/a/a/i0;->m:J

    return-void
.end method

.method public static c(JLf/i/a/a/j1/n;)Lf/i/a/a/i0;
    .locals 20

    move-wide/from16 v4, p0

    move-wide/from16 v13, p0

    move-wide/from16 v17, p0

    move-object/from16 v11, p2

    .line 1
    new-instance v19, Lf/i/a/a/i0;

    move-object/from16 v0, v19

    sget-object v1, Lf/i/a/a/u0;->a:Lf/i/a/a/u0;

    sget-object v3, Lf/i/a/a/i0;->n:Lf/i/a/a/h1/e0$a;

    sget-object v10, Lf/i/a/a/h1/p0;->d:Lf/i/a/a/h1/p0;

    sget-object v12, Lf/i/a/a/i0;->n:Lf/i/a/a/h1/e0$a;

    const/4 v2, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-wide/16 v15, 0x0

    invoke-direct/range {v0 .. v18}, Lf/i/a/a/i0;-><init>(Lf/i/a/a/u0;Ljava/lang/Object;Lf/i/a/a/h1/e0$a;JJIZLf/i/a/a/h1/p0;Lf/i/a/a/j1/n;Lf/i/a/a/h1/e0$a;JJJ)V

    return-object v19
.end method


# virtual methods
.method public a(Lf/i/a/a/h1/e0$a;JJJ)Lf/i/a/a/i0;
    .locals 21
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    move-object/from16 v0, p0

    .line 1
    new-instance v20, Lf/i/a/a/i0;

    iget-object v2, v0, Lf/i/a/a/i0;->a:Lf/i/a/a/u0;

    iget-object v3, v0, Lf/i/a/a/i0;->b:Ljava/lang/Object;

    .line 2
    invoke-virtual/range {p1 .. p1}, Lf/i/a/a/h1/e0$a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    move-wide/from16 v7, p4

    goto :goto_0

    :cond_0
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v7, v4

    :goto_0
    iget v9, v0, Lf/i/a/a/i0;->f:I

    iget-boolean v10, v0, Lf/i/a/a/i0;->g:Z

    iget-object v11, v0, Lf/i/a/a/i0;->h:Lf/i/a/a/h1/p0;

    iget-object v12, v0, Lf/i/a/a/i0;->i:Lf/i/a/a/j1/n;

    iget-object v13, v0, Lf/i/a/a/i0;->j:Lf/i/a/a/h1/e0$a;

    iget-wide v14, v0, Lf/i/a/a/i0;->k:J

    move-object/from16 v1, v20

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    move-wide/from16 v16, p6

    move-wide/from16 v18, p2

    invoke-direct/range {v1 .. v19}, Lf/i/a/a/i0;-><init>(Lf/i/a/a/u0;Ljava/lang/Object;Lf/i/a/a/h1/e0$a;JJIZLf/i/a/a/h1/p0;Lf/i/a/a/j1/n;Lf/i/a/a/h1/e0$a;JJJ)V

    return-object v20
.end method

.method public b(Lf/i/a/a/h1/p0;Lf/i/a/a/j1/n;)Lf/i/a/a/i0;
    .locals 21
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    .line 1
    new-instance v20, Lf/i/a/a/i0;

    move-object/from16 v1, v20

    iget-object v2, v0, Lf/i/a/a/i0;->a:Lf/i/a/a/u0;

    iget-object v3, v0, Lf/i/a/a/i0;->b:Ljava/lang/Object;

    iget-object v4, v0, Lf/i/a/a/i0;->c:Lf/i/a/a/h1/e0$a;

    iget-wide v5, v0, Lf/i/a/a/i0;->d:J

    iget-wide v7, v0, Lf/i/a/a/i0;->e:J

    iget v9, v0, Lf/i/a/a/i0;->f:I

    iget-boolean v10, v0, Lf/i/a/a/i0;->g:Z

    iget-object v13, v0, Lf/i/a/a/i0;->j:Lf/i/a/a/h1/e0$a;

    iget-wide v14, v0, Lf/i/a/a/i0;->k:J

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    iget-wide v1, v0, Lf/i/a/a/i0;->l:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lf/i/a/a/i0;->m:J

    move-wide/from16 v18, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v19}, Lf/i/a/a/i0;-><init>(Lf/i/a/a/u0;Ljava/lang/Object;Lf/i/a/a/h1/e0$a;JJIZLf/i/a/a/h1/p0;Lf/i/a/a/j1/n;Lf/i/a/a/h1/e0$a;JJJ)V

    return-object v20
.end method

.method public d(ZLf/i/a/a/u0$c;)Lf/i/a/a/h1/e0$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/i0;->a:Lf/i/a/a/u0;

    invoke-virtual {v0}, Lf/i/a/a/u0;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lf/i/a/a/i0;->n:Lf/i/a/a/h1/e0$a;

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lf/i/a/a/i0;->a:Lf/i/a/a/u0;

    .line 4
    invoke-virtual {v0, p1}, Lf/i/a/a/u0;->a(Z)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lf/i/a/a/u0;->n(ILf/i/a/a/u0$c;)Lf/i/a/a/u0$c;

    move-result-object p1

    iget p1, p1, Lf/i/a/a/u0$c;->f:I

    .line 5
    new-instance p2, Lf/i/a/a/h1/e0$a;

    iget-object v0, p0, Lf/i/a/a/i0;->a:Lf/i/a/a/u0;

    invoke-virtual {v0, p1}, Lf/i/a/a/u0;->m(I)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p2, p1}, Lf/i/a/a/h1/e0$a;-><init>(Ljava/lang/Object;)V

    return-object p2
.end method
