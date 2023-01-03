.class public final Li/v$a$a;
.super Lh/o/c/h;
.source "Handshake.kt"

# interfaces
.implements Lh/o/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li/v$a;->b(Li/l0;Li/j;Ljava/util/List;Ljava/util/List;)Li/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
.field public final synthetic a:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Li/v$a$a;->a:Ljava/util/List;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lh/o/c/h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Li/v$a$a;->a:Ljava/util/List;

    return-object v0
.end method
