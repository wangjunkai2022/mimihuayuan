.class public final Lf/i/a/a/a1/a/b;
.super Lf/i/a/a/l1/a0$a;
.source "OkHttpDataSourceFactory.java"


# instance fields
.field public final b:Li/f$a;

.field public final c:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final d:Lf/i/a/a/l1/i0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final e:Li/e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li/f$a;Ljava/lang/String;Lf/i/a/a/l1/i0;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lf/i/a/a/l1/i0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lf/i/a/a/l1/a0$a;-><init>()V

    .line 2
    iput-object p1, p0, Lf/i/a/a/a1/a/b;->b:Li/f$a;

    .line 3
    iput-object p2, p0, Lf/i/a/a/a1/a/b;->c:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lf/i/a/a/a1/a/b;->d:Lf/i/a/a/l1/i0;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lf/i/a/a/a1/a/b;->e:Li/e;

    return-void
.end method


# virtual methods
.method public a(Lf/i/a/a/l1/a0$f;)Lf/i/a/a/l1/a0;
    .locals 7

    .line 1
    new-instance v6, Lf/i/a/a/a1/a/a;

    iget-object v1, p0, Lf/i/a/a/a1/a/b;->b:Li/f$a;

    iget-object v2, p0, Lf/i/a/a/a1/a/b;->c:Ljava/lang/String;

    iget-object v4, p0, Lf/i/a/a/a1/a/b;->e:Li/e;

    const/4 v3, 0x0

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lf/i/a/a/a1/a/a;-><init>(Li/f$a;Ljava/lang/String;Lf/i/a/a/m1/w;Li/e;Lf/i/a/a/l1/a0$f;)V

    .line 2
    iget-object p1, p0, Lf/i/a/a/a1/a/b;->d:Lf/i/a/a/l1/i0;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v6, p1}, Lf/i/a/a/l1/h;->c(Lf/i/a/a/l1/i0;)V

    :cond_0
    return-object v6
.end method
