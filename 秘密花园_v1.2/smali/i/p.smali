.class public interface abstract Li/p;
.super Ljava/lang/Object;
.source "CookieJar.kt"


# static fields
.field public static final a:Li/p;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Li/o$a;

    invoke-direct {v0}, Li/o$a;-><init>()V

    sput-object v0, Li/p;->a:Li/p;

    return-void
.end method


# virtual methods
.method public abstract a(Li/x;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/x;",
            ")",
            "Ljava/util/List<",
            "Li/n;",
            ">;"
        }
    .end annotation
.end method

.method public abstract b(Li/x;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/x;",
            "Ljava/util/List<",
            "Li/n;",
            ">;)V"
        }
    .end annotation
.end method
