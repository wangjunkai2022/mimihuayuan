.class public Lf/d/a/o/p/g/f$c;
.super Ljava/lang/Object;
.source "GifFrameLoader.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/o/p/g/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lf/d/a/o/p/g/f;


# direct methods
.method public constructor <init>(Lf/d/a/o/p/g/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/d/a/o/p/g/f$c;->a:Lf/d/a/o/p/g/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lf/d/a/o/p/g/f$a;

    .line 3
    iget-object v0, p0, Lf/d/a/o/p/g/f$c;->a:Lf/d/a/o/p/g/f;

    invoke-virtual {v0, p1}, Lf/d/a/o/p/g/f;->b(Lf/d/a/o/p/g/f$a;)V

    return v1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lf/d/a/o/p/g/f$a;

    .line 5
    iget-object v0, p0, Lf/d/a/o/p/g/f$c;->a:Lf/d/a/o/p/g/f;

    iget-object v0, v0, Lf/d/a/o/p/g/f;->d:Lf/d/a/j;

    invoke-virtual {v0, p1}, Lf/d/a/j;->m(Lf/d/a/s/h/h;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
