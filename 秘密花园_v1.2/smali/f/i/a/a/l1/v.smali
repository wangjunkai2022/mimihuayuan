.class public final Lf/i/a/a/l1/v;
.super Lf/i/a/a/l1/a0$a;
.source "DefaultHttpDataSourceFactory.java"


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Lf/i/a/a/l1/i0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final d:I

.field public final e:I

.field public final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lf/i/a/a/l1/i0;IIZ)V
    .locals 1
    .param p2    # Lf/i/a/a/l1/i0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lf/i/a/a/l1/a0$a;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iput-object p1, p0, Lf/i/a/a/l1/v;->b:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lf/i/a/a/l1/v;->c:Lf/i/a/a/l1/i0;

    .line 5
    iput p3, p0, Lf/i/a/a/l1/v;->d:I

    .line 6
    iput p4, p0, Lf/i/a/a/l1/v;->e:I

    .line 7
    iput-boolean p5, p0, Lf/i/a/a/l1/v;->f:Z

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public a(Lf/i/a/a/l1/a0$f;)Lf/i/a/a/l1/a0;
    .locals 8

    .line 1
    new-instance v7, Lf/i/a/a/l1/u;

    iget-object v1, p0, Lf/i/a/a/l1/v;->b:Ljava/lang/String;

    iget v3, p0, Lf/i/a/a/l1/v;->d:I

    iget v4, p0, Lf/i/a/a/l1/v;->e:I

    iget-boolean v5, p0, Lf/i/a/a/l1/v;->f:Z

    const/4 v2, 0x0

    move-object v0, v7

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lf/i/a/a/l1/u;-><init>(Ljava/lang/String;Lf/i/a/a/m1/w;IIZLf/i/a/a/l1/a0$f;)V

    .line 2
    iget-object p1, p0, Lf/i/a/a/l1/v;->c:Lf/i/a/a/l1/i0;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v7, p1}, Lf/i/a/a/l1/h;->c(Lf/i/a/a/l1/i0;)V

    :cond_0
    return-object v7
.end method
