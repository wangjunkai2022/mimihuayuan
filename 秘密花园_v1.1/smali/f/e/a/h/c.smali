.class public Lf/e/a/h/c;
.super Ljava/lang/Object;
.source "M3U8DownloadTask.java"

# interfaces
.implements Lf/e/a/h/h/d;


# instance fields
.field public final synthetic a:Lf/e/a/h/a;


# direct methods
.method public constructor <init>(Lf/e/a/h/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/h/c;->a:Lf/e/a/h/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/e/a/h/c;->a:Lf/e/a/h/a;

    .line 2
    iget-object v0, v0, Lf/e/a/h/a;->a:Lf/e/a/h/h/c;

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Lcom/comeback/data/ui/main/DownloadActivity;

    .line 4
    iget-object v0, v0, Lcom/comeback/data/ui/main/DownloadActivity;->rlDown:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5
    :cond_0
    iget-object v0, p0, Lf/e/a/h/c;->a:Lf/e/a/h/a;

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Lf/e/a/h/a;->d:Z

    return-void
.end method
