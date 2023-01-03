.class public final Ll/o$a;
.super Ll/o;
.source "HttpServiceMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseT:",
        "Ljava/lang/Object;",
        "ReturnT:",
        "Ljava/lang/Object;",
        ">",
        "Ll/o<",
        "TResponseT;TReturnT;>;"
    }
.end annotation


# instance fields
.field public final d:Ll/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll/e<",
            "TResponseT;TReturnT;>;"
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
            "TResponseT;TReturnT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Ll/o;-><init>(Ll/f0;Li/f$a;Ll/l;)V

    .line 2
    iput-object p4, p0, Ll/o$a;->d:Ll/e;

    return-void
.end method


# virtual methods
.method public b(Ll/d;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll/d<",
            "TResponseT;>;[",
            "Ljava/lang/Object;",
            ")TReturnT;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Ll/o$a;->d:Ll/e;

    invoke-interface {p2, p1}, Ll/e;->b(Ll/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
