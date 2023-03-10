.class public Lf/d/a/e;
.super Landroid/content/ContextWrapper;
.source "GlideContext.java"


# static fields
.field public static final k:Lf/d/a/k;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/k<",
            "**>;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lf/d/a/o/n/b0/b;

.field public final b:Lf/d/a/h;

.field public final c:Lf/d/a/s/h/f;

.field public final d:Lf/d/a/c$a;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/d/a/s/d<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lf/d/a/k<",
            "**>;>;"
        }
    .end annotation
.end field

.field public final g:Lf/d/a/o/n/l;

.field public final h:Z

.field public final i:I

.field public j:Lf/d/a/s/e;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lf/d/a/b;

    invoke-direct {v0}, Lf/d/a/b;-><init>()V

    sput-object v0, Lf/d/a/e;->k:Lf/d/a/k;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lf/d/a/o/n/b0/b;Lf/d/a/h;Lf/d/a/s/h/f;Lf/d/a/c$a;Ljava/util/Map;Ljava/util/List;Lf/d/a/o/n/l;ZI)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lf/d/a/o/n/b0/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lf/d/a/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lf/d/a/s/h/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lf/d/a/c$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lf/d/a/o/n/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lf/d/a/o/n/b0/b;",
            "Lf/d/a/h;",
            "Lf/d/a/s/h/f;",
            "Lf/d/a/c$a;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lf/d/a/k<",
            "**>;>;",
            "Ljava/util/List<",
            "Lf/d/a/s/d<",
            "Ljava/lang/Object;",
            ">;>;",
            "Lf/d/a/o/n/l;",
            "ZI)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, Lf/d/a/e;->a:Lf/d/a/o/n/b0/b;

    .line 3
    iput-object p3, p0, Lf/d/a/e;->b:Lf/d/a/h;

    .line 4
    iput-object p4, p0, Lf/d/a/e;->c:Lf/d/a/s/h/f;

    .line 5
    iput-object p5, p0, Lf/d/a/e;->d:Lf/d/a/c$a;

    .line 6
    iput-object p7, p0, Lf/d/a/e;->e:Ljava/util/List;

    .line 7
    iput-object p6, p0, Lf/d/a/e;->f:Ljava/util/Map;

    .line 8
    iput-object p8, p0, Lf/d/a/e;->g:Lf/d/a/o/n/l;

    .line 9
    iput-boolean p9, p0, Lf/d/a/e;->h:Z

    .line 10
    iput p10, p0, Lf/d/a/e;->i:I

    return-void
.end method
