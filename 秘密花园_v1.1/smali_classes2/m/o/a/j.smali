.class public final Lm/o/a/j;
.super Ljava/lang/Object;
.source "OperatorSubscribeOn.java"

# interfaces
.implements Lm/e$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm/o/a/j$a;
    }
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
.field public final a:Lm/g;

.field public final b:Lm/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm/e<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Z


# direct methods
.method public constructor <init>(Lm/e;Lm/g;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm/e<",
            "TT;>;",
            "Lm/g;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lm/o/a/j;->a:Lm/g;

    .line 3
    iput-object p1, p0, Lm/o/a/j;->b:Lm/e;

    .line 4
    iput-boolean p3, p0, Lm/o/a/j;->c:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Lm/j;

    .line 2
    iget-object v0, p0, Lm/o/a/j;->a:Lm/g;

    invoke-virtual {v0}, Lm/g;->a()Lm/g$a;

    move-result-object v0

    .line 3
    new-instance v1, Lm/o/a/j$a;

    iget-boolean v2, p0, Lm/o/a/j;->c:Z

    iget-object v3, p0, Lm/o/a/j;->b:Lm/e;

    invoke-direct {v1, p1, v2, v0, v3}, Lm/o/a/j$a;-><init>(Lm/j;ZLm/g$a;Lm/e;)V

    .line 4
    invoke-virtual {p1, v1}, Lm/j;->b(Lm/k;)V

    .line 5
    invoke-virtual {p1, v0}, Lm/j;->b(Lm/k;)V

    .line 6
    invoke-virtual {v0, v1}, Lm/g$a;->b(Lm/n/a;)Lm/k;

    return-void
.end method
