.class public Lcom/comeback/data/ui/maomi/adapter/VoiceListAdapter$Holder_ViewBinding$a;
.super Ld/c/b;
.source "VoiceListAdapter$Holder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/maomi/adapter/VoiceListAdapter$Holder_ViewBinding;-><init>(Lcom/comeback/data/ui/maomi/adapter/VoiceListAdapter$Holder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/maomi/adapter/VoiceListAdapter$Holder;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/maomi/adapter/VoiceListAdapter$Holder_ViewBinding;Lcom/comeback/data/ui/maomi/adapter/VoiceListAdapter$Holder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/maomi/adapter/VoiceListAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/maomi/adapter/VoiceListAdapter$Holder;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/maomi/adapter/VoiceListAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/maomi/adapter/VoiceListAdapter$Holder;

    .line 2
    iget-object v0, p1, Lcom/comeback/data/ui/maomi/adapter/VoiceListAdapter$Holder;->a:Lcom/comeback/data/ui/maomi/adapter/VoiceListAdapter;

    iget-boolean v1, v0, Lcom/comeback/data/ui/maomi/adapter/VoiceListAdapter;->d:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, v0, Lcom/comeback/data/base/BaseAbstractAdapter;->a:Landroid/content/Context;

    iget-object v1, p1, Lcom/comeback/data/ui/maomi/adapter/VoiceListAdapter$Holder;->b:Lcom/comeback/data/ui/maomi/bean/VoiceList$DataBeanX$DataBean;

    invoke-virtual {v1}, Lcom/comeback/data/ui/maomi/bean/VoiceList$DataBeanX$DataBean;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/comeback/data/ui/maomi/adapter/VoiceListAdapter$Holder;->b:Lcom/comeback/data/ui/maomi/bean/VoiceList$DataBeanX$DataBean;

    invoke-virtual {v2}, Lcom/comeback/data/ui/maomi/bean/VoiceList$DataBeanX$DataBean;->getAnchor_id()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/comeback/data/ui/maomi/adapter/VoiceListAdapter$Holder;->b:Lcom/comeback/data/ui/maomi/bean/VoiceList$DataBeanX$DataBean;

    invoke-virtual {v3}, Lcom/comeback/data/ui/maomi/bean/VoiceList$DataBeanX$DataBean;->getThumb()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p1, Lcom/comeback/data/ui/maomi/adapter/VoiceListAdapter$Holder;->b:Lcom/comeback/data/ui/maomi/bean/VoiceList$DataBeanX$DataBean;

    invoke-virtual {p1}, Lcom/comeback/data/ui/maomi/bean/VoiceList$DataBeanX$DataBean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, v2, v3, p1}, Lcom/comeback/data/ui/maomi/VoiceAnchorSpecialActivity;->s(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, v0, Lcom/comeback/data/base/BaseAbstractAdapter;->a:Landroid/content/Context;

    iget-object p1, p1, Lcom/comeback/data/ui/maomi/adapter/VoiceListAdapter$Holder;->b:Lcom/comeback/data/ui/maomi/bean/VoiceList$DataBeanX$DataBean;

    invoke-static {v0, p1}, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->n(Landroid/content/Context;Lcom/comeback/data/ui/maomi/bean/VoiceList$DataBeanX$DataBean;)V

    :goto_0
    return-void
.end method
