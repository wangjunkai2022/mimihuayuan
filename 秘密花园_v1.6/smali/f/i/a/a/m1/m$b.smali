.class public final Lf/i/a/a/m1/m$b;
.super Ljava/lang/Object;
.source "EventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/m1/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public c:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/i/a/a/m1/m$b;->a:Landroid/os/Handler;

    .line 3
    iput-object p2, p0, Lf/i/a/a/m1/m$b;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public synthetic a(Lf/i/a/a/m1/m$a;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf/i/a/a/m1/m$b;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/i/a/a/m1/m$b;->b:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lf/i/a/a/m1/m$a;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
