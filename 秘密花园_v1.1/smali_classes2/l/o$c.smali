.class public final Ll/o$c;
.super Ll/o;
.source "HttpServiceMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseT:",
        "Ljava/lang/Object;",
        ">",
        "Ll/o<",
        "TResponseT;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final d:Ll/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll/e<",
            "TResponseT;",
            "Ll/d<",
            "TResponseT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ll/f0;Li/f$a;Ll/l;Ll/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll/f0;",
            "Li/f$a;",
            "Ll/l<",
            "Li/i0;",
            "TResponseT;>;",
            "Ll/e<",
            "TResponseT;",
            "Ll/d<",
            "TResponseT;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Ll/o;-><init>(Ll/f0;Li/f$a;Ll/l;)V

    .line 2
    iput-object p4, p0, Ll/o$c;->d:Ll/e;

    return-void
.end method


# virtual methods
.method public b(Ll/d;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll/d<",
            "TResponseT;>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ll/o$c;->d:Ll/e;

    invoke-interface {v0, p1}, Ll/e;->b(Ll/d;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ll/d;

    .line 2
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    aget-object p2, p2, v0

    check-cast p2, Lh/m/a;

    .line 3
    :try_start_0
    invoke-static {p1, p2}, Lj/b;->f(Ll/d;Lh/m/a;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    invoke-static {p1, p2}, Lj/b;->z(Ljava/lang/Exception;Lh/m/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
