.class public final Lh/r/d;
.super Ljava/lang/Object;
.source "Iterables.kt"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lh/o/c/o/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;",
        "Lh/o/c/o/a;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lh/r/c;


# direct methods
.method public constructor <init>(Lh/r/c;)V
    .locals 0

    iput-object p1, p0, Lh/r/d;->a:Lh/r/c;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lh/r/d;->a:Lh/r/c;

    invoke-interface {v0}, Lh/r/c;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
