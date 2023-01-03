.class public abstract Ll/o;
.super Ll/i0;
.source "HttpServiceMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll/o$b;,
        Ll/o$c;,
        Ll/o$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseT:",
        "Ljava/lang/Object;",
        "ReturnT:",
        "Ljava/lang/Object;",
        ">",
        "Ll/i0<",
        "TReturnT;>;"
    }
.end annotation


# instance fields
.field public final a:Ll/f0;

.field public final b:Li/f$a;

.field public final c:Ll/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll/l<",
            "Li/i0;",
            "TResponseT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ll/f0;Li/f$a;Ll/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll/f0;",
            "Li/f$a;",
            "Ll/l<",
            "Li/i0;",
            "TResponseT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ll/i0;-><init>()V

    .line 2
    iput-object p1, p0, Ll/o;->a:Ll/f0;

    .line 3
    iput-object p2, p0, Ll/o;->b:Li/f$a;

    .line 4
    iput-object p3, p0, Ll/o;->c:Ll/l;

    return-void
.end method


# virtual methods
.method public abstract b(Ll/d;[Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll/d<",
            "TResponseT;>;[",
            "Ljava/lang/Object;",
            ")TReturnT;"
        }
    .end annotation
.end method
