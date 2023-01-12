.class public Lf/e/a/j/c0/i;
.super Ljava/lang/Object;
.source "DownloadActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/comeback/data/ui/main/DownloadActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/main/DownloadActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/c0/i;->b:Lcom/comeback/data/ui/main/DownloadActivity;

    iput-object p2, p0, Lf/e/a/j/c0/i;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/e/a/j/c0/i;->b:Lcom/comeback/data/ui/main/DownloadActivity;

    iget-object v0, v0, Lcom/comeback/data/ui/main/DownloadActivity;->tvSpeed:Landroid/widget/TextView;

    iget-object v1, p0, Lf/e/a/j/c0/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
