.class public Lcom/comeback/data/ui/slf/adapter/Novel2Adapter$Holder_ViewBinding$a;
.super Ld/c/b;
.source "Novel2Adapter$Holder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/slf/adapter/Novel2Adapter$Holder_ViewBinding;-><init>(Lcom/comeback/data/ui/slf/adapter/Novel2Adapter$Holder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/slf/adapter/Novel2Adapter$Holder;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/slf/adapter/Novel2Adapter$Holder_ViewBinding;Lcom/comeback/data/ui/slf/adapter/Novel2Adapter$Holder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/slf/adapter/Novel2Adapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/slf/adapter/Novel2Adapter$Holder;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/slf/adapter/Novel2Adapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/slf/adapter/Novel2Adapter$Holder;

    .line 2
    iget-object v0, p1, Lcom/comeback/data/ui/slf/adapter/Novel2Adapter$Holder;->b:Lcom/comeback/data/ui/slf/bean/SLFItemBean;

    invoke-virtual {v0}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->getIsVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "0fjhgvzF3Yv+gLfUnv7MjbvjhfjilpqDlta7j9fejNap"

    .line 3
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->p1(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p1, Lcom/comeback/data/ui/slf/adapter/Novel2Adapter$Holder;->a:Lcom/comeback/data/ui/slf/adapter/Novel2Adapter;

    iget-object v0, v0, Lcom/comeback/data/base/BaseAbstractAdapter;->a:Landroid/content/Context;

    iget-object p1, p1, Lcom/comeback/data/ui/slf/adapter/Novel2Adapter$Holder;->b:Lcom/comeback/data/ui/slf/bean/SLFItemBean;

    invoke-virtual {p1}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/comeback/data/ui/slf/NovelReadActivity;->p(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
