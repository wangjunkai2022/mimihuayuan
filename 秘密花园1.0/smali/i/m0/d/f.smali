.class public final Li/m0/d/f;
.super Lh/o/c/h;
.source "RealConnection.kt"

# interfaces
.implements Lh/o/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lh/o/c/h;",
        "Lh/o/b/a<",
        "Ljava/util/List<",
        "+",
        "Ljava/security/cert/Certificate;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Li/h;

.field public final synthetic b:Li/v;

.field public final synthetic c:Li/a;


# direct methods
.method public constructor <init>(Li/h;Li/v;Li/a;)V
    .locals 0

    iput-object p1, p0, Li/m0/d/f;->a:Li/h;

    iput-object p2, p0, Li/m0/d/f;->b:Li/v;

    iput-object p3, p0, Li/m0/d/f;->c:Li/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lh/o/c/h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Li/m0/d/f;->a:Li/h;

    .line 2
    iget-object v0, v0, Li/h;->b:Li/m0/k/c;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Li/m0/d/f;->b:Li/v;

    invoke-virtual {v1}, Li/v;->b()Ljava/util/List;

    move-result-object v1

    .line 4
    iget-object v2, p0, Li/m0/d/f;->c:Li/a;

    .line 5
    iget-object v2, v2, Li/a;->a:Li/x;

    .line 6
    iget-object v2, v2, Li/x;->e:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1, v2}, Li/m0/k/c;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lh/o/c/g;->e()V

    const/4 v0, 0x0

    throw v0
.end method
