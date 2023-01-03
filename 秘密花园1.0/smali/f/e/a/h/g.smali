.class public Lf/e/a/h/g;
.super Ljava/lang/Thread;
.source "M3U8InfoManger.java"


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lf/e/a/h/f;


# direct methods
.method public constructor <init>(Lf/e/a/h/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/h/g;->d:Lf/e/a/h/f;

    iput-object p2, p0, Lf/e/a/h/g;->a:Ljava/lang/String;

    iput-object p3, p0, Lf/e/a/h/g;->b:Ljava/lang/String;

    iput-object p4, p0, Lf/e/a/h/g;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lf/e/a/h/g;->a:Ljava/lang/String;

    iget-object v1, p0, Lf/e/a/h/g;->b:Ljava/lang/String;

    iget-object v2, p0, Lf/e/a/h/g;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lc/a/a/b/g/h;->V0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lf/e/a/h/h/a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lf/e/a/h/g;->d:Lf/e/a/h/f;

    .line 3
    iget-object v2, v1, Lf/e/a/h/f;->b:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 4
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v0, 0x44e

    .line 5
    iput v0, v2, Landroid/os/Message;->what:I

    .line 6
    iget-object v0, v1, Lf/e/a/h/f;->b:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    iget-object v1, p0, Lf/e/a/h/g;->d:Lf/e/a/h/f;

    .line 8
    iget-object v2, v1, Lf/e/a/h/f;->b:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 9
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v0, 0x44d

    .line 10
    iput v0, v2, Landroid/os/Message;->what:I

    .line 11
    iget-object v0, v1, Lf/e/a/h/f;->b:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method
