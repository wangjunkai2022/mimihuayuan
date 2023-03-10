.class public Lf/e/a/h/a$a;
.super Landroid/os/Handler;
.source "M3U8DownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/e/a/h/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/e/a/h/a;


# direct methods
.method public constructor <init>(Lf/e/a/h/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/h/a$a;->a:Lf/e/a/h/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 2
    :pswitch_0
    iget-object p1, p0, Lf/e/a/h/a$a;->a:Lf/e/a/h/a;

    .line 3
    iget-object p1, p1, Lf/e/a/h/a;->i:Ljava/util/Timer;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 5
    :cond_0
    iget-object p1, p0, Lf/e/a/h/a$a;->a:Lf/e/a/h/a;

    if-eqz p1, :cond_1

    .line 6
    sget-object v0, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    .line 7
    iput-object v1, v0, Lcom/comeback/data/App;->a:Lf/e/a/h/a;

    .line 8
    invoke-static {}, Lg/a/x;->P()Lg/a/x;

    move-result-object v0

    .line 9
    const-class v1, Lcom/comeback/data/ui/main/bean/VideoCacheBean;

    .line 10
    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 11
    new-instance v2, Lio/realm/RealmQuery;

    invoke-direct {v2, v0, v1}, Lio/realm/RealmQuery;-><init>(Lg/a/x;Ljava/lang/Class;)V

    const-string v1, "QhAP"

    .line 12
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Lf/e/a/h/a;->e:Lcom/comeback/data/ui/main/bean/VideoCacheBean;

    invoke-virtual {p1}, Lcom/comeback/data/ui/main/bean/VideoCacheBean;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Lio/realm/RealmQuery;->a(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    invoke-virtual {v2}, Lio/realm/RealmQuery;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/main/bean/VideoCacheBean;

    .line 13
    invoke-virtual {v0}, Lg/a/a;->d()V

    const/4 v1, 0x1

    .line 14
    invoke-virtual {p1, v1}, Lcom/comeback/data/ui/main/bean/VideoCacheBean;->setDownloadFinish(Z)V

    .line 15
    invoke-virtual {v0}, Lg/a/a;->g()V

    .line 16
    iget-object p1, p0, Lf/e/a/h/a$a;->a:Lf/e/a/h/a;

    .line 17
    iget-object p1, p1, Lf/e/a/h/a;->a:Lf/e/a/h/h/c;

    if-eqz p1, :cond_3

    .line 18
    check-cast p1, Lcom/comeback/data/ui/main/DownloadActivity;

    .line 19
    iget-object v0, p1, Lcom/comeback/data/ui/main/DownloadActivity;->rlDown:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 20
    invoke-virtual {p1}, Lcom/comeback/data/ui/main/DownloadActivity;->p()V

    goto :goto_0

    .line 21
    :cond_1
    throw v1

    .line 22
    :pswitch_1
    iget-object p1, p0, Lf/e/a/h/a$a;->a:Lf/e/a/h/a;

    .line 23
    iget-object p1, p1, Lf/e/a/h/a;->a:Lf/e/a/h/h/c;

    if-eqz p1, :cond_3

    .line 24
    sget v0, Lf/e/a/h/a;->m:I

    .line 25
    sget v1, Lf/e/a/h/a;->l:I

    .line 26
    check-cast p1, Lcom/comeback/data/ui/main/DownloadActivity;

    const-string v2, "Q1g="

    .line 27
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "F0JDREsQAw=="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lf/e/a/k/f;->a()V

    .line 28
    iget-object p1, p1, Lcom/comeback/data/ui/main/DownloadActivity;->progress:Landroid/widget/ProgressBar;

    mul-int/lit8 v1, v1, 0x64

    div-int/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 29
    :pswitch_2
    iget-object v0, p0, Lf/e/a/h/a$a;->a:Lf/e/a/h/a;

    .line 30
    iget-object v0, v0, Lf/e/a/h/a;->a:Lf/e/a/h/h/c;

    if-eqz v0, :cond_2

    .line 31
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    check-cast v0, Lcom/comeback/data/ui/main/DownloadActivity;

    invoke-virtual {v0, p1}, Lcom/comeback/data/ui/main/DownloadActivity;->o(Ljava/lang/Throwable;)V

    .line 32
    :cond_2
    sget-object p1, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    .line 33
    iput-object v1, p1, Lcom/comeback/data/App;->a:Lf/e/a/h/a;

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
