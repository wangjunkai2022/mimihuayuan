.class public interface abstract Li/m0/g/q;
.super Ljava/lang/Object;
.source "PushObserver.kt"


# static fields
.field public static final a:Li/m0/g/q;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Li/m0/g/p$a;

    invoke-direct {v0}, Li/m0/g/p$a;-><init>()V

    sput-object v0, Li/m0/g/q;->a:Li/m0/g/q;

    return-void
.end method


# virtual methods
.method public abstract a(ILjava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Li/m0/g/c;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract b(ILjava/util/List;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Li/m0/g/c;",
            ">;Z)Z"
        }
    .end annotation
.end method

.method public abstract c(ILi/m0/g/b;)V
.end method

.method public abstract d(ILj/j;IZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
