.class public final Lm/o/d/d$c;
.super Ljava/lang/Object;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements Lm/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/o/d/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lm/e$a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final b:Lm/n/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm/n/c<",
            "Lm/n/a;",
            "Lm/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lm/n/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lm/n/c<",
            "Lm/n/a;",
            "Lm/k;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lm/o/d/d$c;->a:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lm/o/d/d$c;->b:Lm/n/c;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lm/j;

    .line 2
    new-instance v0, Lm/o/d/d$d;

    iget-object v1, p0, Lm/o/d/d$c;->a:Ljava/lang/Object;

    iget-object v2, p0, Lm/o/d/d$c;->b:Lm/n/c;

    invoke-direct {v0, p1, v1, v2}, Lm/o/d/d$d;-><init>(Lm/j;Ljava/lang/Object;Lm/n/c;)V

    invoke-virtual {p1, v0}, Lm/j;->i(Lm/f;)V

    return-void
.end method
