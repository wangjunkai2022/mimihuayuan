.class public Lcom/comeback/data/ui/main/DownloadActivity_ViewBinding$a;
.super Ld/c/b;
.source "DownloadActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/main/DownloadActivity_ViewBinding;-><init>(Lcom/comeback/data/ui/main/DownloadActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/main/DownloadActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/main/DownloadActivity_ViewBinding;Lcom/comeback/data/ui/main/DownloadActivity;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/main/DownloadActivity_ViewBinding$a;->c:Lcom/comeback/data/ui/main/DownloadActivity;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/main/DownloadActivity_ViewBinding$a;->c:Lcom/comeback/data/ui/main/DownloadActivity;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2
    sget-object v1, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    .line 3
    iget-object v1, v1, Lcom/comeback/data/App;->a:Lf/e/a/h/a;

    if-eqz v1, :cond_0

    .line 4
    iput-object v0, v1, Lf/e/a/h/a;->a:Lf/e/a/h/h/c;

    .line 5
    invoke-virtual {v1}, Lf/e/a/h/a;->d()V

    .line 6
    iget-object p1, p1, Lcom/comeback/data/ui/main/DownloadActivity;->rlDown:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7
    sget-object p1, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    .line 8
    iput-object v0, p1, Lcom/comeback/data/App;->a:Lf/e/a/h/a;

    :cond_0
    return-void

    .line 9
    :cond_1
    throw v0
.end method
