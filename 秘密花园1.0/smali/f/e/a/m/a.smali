.class public Lf/e/a/m/a;
.super Landroid/os/Handler;
.source "VideoLoadingProgressbar.java"


# instance fields
.field public final synthetic a:Lcom/comeback/data/widget/VideoLoadingProgressbar;


# direct methods
.method public constructor <init>(Lcom/comeback/data/widget/VideoLoadingProgressbar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/m/a;->a:Lcom/comeback/data/widget/VideoLoadingProgressbar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget-object p1, p0, Lf/e/a/m/a;->a:Lcom/comeback/data/widget/VideoLoadingProgressbar;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 3
    iget-object p1, p0, Lf/e/a/m/a;->a:Lcom/comeback/data/widget/VideoLoadingProgressbar;

    .line 4
    iget p1, p1, Lcom/comeback/data/widget/VideoLoadingProgressbar;->h:I

    int-to-long v0, p1

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
