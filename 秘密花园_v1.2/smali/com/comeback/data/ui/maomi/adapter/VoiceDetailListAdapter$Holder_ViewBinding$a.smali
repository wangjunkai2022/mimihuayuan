.class public Lcom/comeback/data/ui/maomi/adapter/VoiceDetailListAdapter$Holder_ViewBinding$a;
.super Ld/c/b;
.source "VoiceDetailListAdapter$Holder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/maomi/adapter/VoiceDetailListAdapter$Holder_ViewBinding;-><init>(Lcom/comeback/data/ui/maomi/adapter/VoiceDetailListAdapter$Holder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/maomi/adapter/VoiceDetailListAdapter$Holder;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/maomi/adapter/VoiceDetailListAdapter$Holder_ViewBinding;Lcom/comeback/data/ui/maomi/adapter/VoiceDetailListAdapter$Holder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/maomi/adapter/VoiceDetailListAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/maomi/adapter/VoiceDetailListAdapter$Holder;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/maomi/adapter/VoiceDetailListAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/maomi/adapter/VoiceDetailListAdapter$Holder;

    .line 2
    iget-object v0, p1, Lcom/comeback/data/ui/maomi/adapter/VoiceDetailListAdapter$Holder;->a:Lcom/comeback/data/ui/maomi/adapter/VoiceDetailListAdapter;

    iget-boolean v1, v0, Lcom/comeback/data/ui/maomi/adapter/VoiceDetailListAdapter;->d:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, v0, Lcom/comeback/data/base/BaseAbstractAdapter;->a:Landroid/content/Context;

    iget-object v1, p1, Lcom/comeback/data/ui/maomi/adapter/VoiceDetailListAdapter$Holder;->b:Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean;

    invoke-virtual {v1}, Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/comeback/data/ui/maomi/adapter/VoiceDetailListAdapter$Holder;->b:Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean;

    invoke-virtual {v2}, Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean;->getAnchor_id()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/comeback/data/ui/maomi/adapter/VoiceDetailListAdapter$Holder;->b:Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean;

    invoke-virtual {v3}, Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean;->getImage()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p1, Lcom/comeback/data/ui/maomi/adapter/VoiceDetailListAdapter$Holder;->b:Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean;

    invoke-virtual {p1}, Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, v2, v3, p1}, Lcom/comeback/data/ui/maomi/VoiceAnchorSpecialActivity;->s(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/comeback/data/ui/maomi/bean/VoiceList$DataBeanX$DataBean;

    invoke-direct {v0}, Lcom/comeback/data/ui/maomi/bean/VoiceList$DataBeanX$DataBean;-><init>()V

    .line 5
    iget-object v1, p1, Lcom/comeback/data/ui/maomi/adapter/VoiceDetailListAdapter$Holder;->b:Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean;

    invoke-virtual {v0, v1}, Lcom/comeback/data/ui/maomi/bean/VoiceList$DataBeanX$DataBean;->copy(Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean;)V

    .line 6
    iget-object p1, p1, Lcom/comeback/data/ui/maomi/adapter/VoiceDetailListAdapter$Holder;->a:Lcom/comeback/data/ui/maomi/adapter/VoiceDetailListAdapter;

    iget-object p1, p1, Lcom/comeback/data/base/BaseAbstractAdapter;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->n(Landroid/content/Context;Lcom/comeback/data/ui/maomi/bean/VoiceList$DataBeanX$DataBean;)V

    :goto_0
    return-void
.end method
