.class public final Lh/r/e;
.super Ljava/lang/Object;
.source "Sequences.kt"

# interfaces
.implements Lh/r/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lh/r/c<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final a:Lh/r/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/r/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Lh/o/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/o/b/b<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lh/r/c;Lh/o/b/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/r/c<",
            "+TT;>;",
            "Lh/o/b/b<",
            "-TT;+TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/r/e;->a:Lh/r/c;

    iput-object p2, p0, Lh/r/e;->b:Lh/o/b/b;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lh/r/e$a;

    invoke-direct {v0, p0}, Lh/r/e$a;-><init>(Lh/r/e;)V

    return-object v0
.end method
