.class public final Lf/d/a/d;
.super Ljava/lang/Object;
.source "GlideBuilder.java"


# instance fields
.field public final a:Ljava/util/Map;
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

.field public b:Lf/d/a/o/n/l;

.field public c:Lf/d/a/o/n/b0/d;

.field public d:Lf/d/a/o/n/b0/b;

.field public e:Lf/d/a/o/n/c0/i;

.field public f:Lf/d/a/o/n/d0/a;

.field public g:Lf/d/a/o/n/d0/a;

.field public h:Lf/d/a/o/n/c0/a$a;

.field public i:Lf/d/a/o/n/c0/j;

.field public j:Lf/d/a/p/d;

.field public k:I

.field public l:Lf/d/a/c$a;

.field public m:Lf/d/a/p/l$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public n:Lf/d/a/o/n/d0/a;

.field public o:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/d/a/s/d<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public p:I

.field public q:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lf/d/a/d;->a:Ljava/util/Map;

    const/4 v0, 0x4

    .line 3
    iput v0, p0, Lf/d/a/d;->k:I

    .line 4
    new-instance v0, Lf/d/a/d$a;

    invoke-direct {v0, p0}, Lf/d/a/d$a;-><init>(Lf/d/a/d;)V

    iput-object v0, p0, Lf/d/a/d;->l:Lf/d/a/c$a;

    const/16 v0, 0x2bc

    .line 5
    iput v0, p0, Lf/d/a/d;->p:I

    const/16 v0, 0x80

    .line 6
    iput v0, p0, Lf/d/a/d;->q:I

    return-void
.end method
