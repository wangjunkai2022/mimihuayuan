.class public final Lf/i/a/a/h1/u$e;
.super Lf/i/a/a/u0;
.source "ConcatenatingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/h1/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final b:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lf/i/a/a/u0;-><init>()V

    .line 2
    iput-object p1, p0, Lf/i/a/a/h1/u$e;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)I
    .locals 1

    .line 1
    sget-object v0, Lf/i/a/a/h1/u$c;->d:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public g(ILf/i/a/a/u0$b;Z)Lf/i/a/a/u0$b;
    .locals 8

    const/4 p1, 0x0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2
    sget-object v2, Lf/i/a/a/h1/u$c;->d:Ljava/lang/Object;

    const/4 v3, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v6, 0x0

    move-object v0, p2

    .line 3
    invoke-virtual/range {v0 .. v7}, Lf/i/a/a/u0$b;->g(Ljava/lang/Object;Ljava/lang/Object;IJJ)Lf/i/a/a/u0$b;

    return-object p2
.end method

.method public i()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public m(I)Ljava/lang/Object;
    .locals 0

    .line 1
    sget-object p1, Lf/i/a/a/h1/u$c;->d:Ljava/lang/Object;

    return-object p1
.end method

.method public o(ILf/i/a/a/u0$c;ZJ)Lf/i/a/a/u0$c;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v2, v0, Lf/i/a/a/h1/u$e;->b:Ljava/lang/Object;

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-wide/16 v9, 0x0

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v16}, Lf/i/a/a/u0$c;->b(Ljava/lang/Object;JJZZJJIIJ)Lf/i/a/a/u0$c;

    return-object p2
.end method

.method public p()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
