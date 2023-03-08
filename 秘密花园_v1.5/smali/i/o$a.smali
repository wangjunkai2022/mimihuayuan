.class public final Li/o$a;
.super Ljava/lang/Object;
.source "CookieJar.kt"

# interfaces
.implements Li/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Li/x;)Ljava/util/List;
    .locals 0
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

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Lh/k/i;->a:Lh/k/i;

    return-object p1

    :cond_0
    const-string p1, "url"

    .line 2
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public b(Li/x;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/x;",
            "Ljava/util/List<",
            "Li/n;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
