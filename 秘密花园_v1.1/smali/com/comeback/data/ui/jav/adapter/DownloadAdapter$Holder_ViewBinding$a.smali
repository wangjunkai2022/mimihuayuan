.class public Lcom/comeback/data/ui/jav/adapter/DownloadAdapter$Holder_ViewBinding$a;
.super Ld/c/b;
.source "DownloadAdapter$Holder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/jav/adapter/DownloadAdapter$Holder_ViewBinding;-><init>(Lcom/comeback/data/ui/jav/adapter/DownloadAdapter$Holder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/jav/adapter/DownloadAdapter$Holder;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/jav/adapter/DownloadAdapter$Holder_ViewBinding;Lcom/comeback/data/ui/jav/adapter/DownloadAdapter$Holder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/jav/adapter/DownloadAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/jav/adapter/DownloadAdapter$Holder;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/jav/adapter/DownloadAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/jav/adapter/DownloadAdapter$Holder;

    .line 2
    iget-object v0, p1, Lcom/comeback/data/ui/jav/adapter/DownloadAdapter$Holder;->a:Lcom/comeback/data/ui/jav/adapter/DownloadAdapter;

    iget-object v0, v0, Lcom/comeback/data/base/BaseAbstractAdapter;->a:Landroid/content/Context;

    const-string v1, "VA4KFAkcWEEX"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    const-string v1, "ewMBAQc="

    .line 3
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Lcom/comeback/data/ui/jav/adapter/DownloadAdapter$Holder;->b:Lcom/comeback/data/ui/jav/bean/Download;

    invoke-virtual {p1}, Lcom/comeback/data/ui/jav/bean/Download;->getMagnet()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 4
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const-string p1, "0sbugePF37vjg774"

    .line 5
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->n1(Ljava/lang/String;)V

    return-void
.end method
