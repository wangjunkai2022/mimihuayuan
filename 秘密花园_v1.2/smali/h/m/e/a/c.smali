.class public abstract Lh/m/e/a/c;
.super Lh/m/e/a/a;
.source "ContinuationImpl.kt"


# instance fields
.field public transient b:Lh/m/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/m/a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lh/m/c;


# direct methods
.method public constructor <init>(Lh/m/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/m/a<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Lh/m/a;->getContext()Lh/m/c;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-direct {p0, p1}, Lh/m/e/a/a;-><init>(Lh/m/a;)V

    iput-object v0, p0, Lh/m/e/a/c;->c:Lh/m/c;

    return-void
.end method


# virtual methods
.method public getContext()Lh/m/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lh/m/e/a/c;->c:Lh/m/c;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lh/o/c/g;->e()V

    const/4 v0, 0x0

    throw v0
.end method
