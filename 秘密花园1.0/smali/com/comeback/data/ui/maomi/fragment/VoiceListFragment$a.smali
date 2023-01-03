.class public Lcom/comeback/data/ui/maomi/fragment/VoiceListFragment$a;
.super Lcom/comeback/data/base/BaseRefreshFragment$a;
.source "VoiceListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/maomi/fragment/VoiceListFragment;->l(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseRefreshFragment$a<",
        "Lcom/comeback/data/ui/maomi/bean/VoiceList;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/comeback/data/ui/maomi/fragment/VoiceListFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/maomi/fragment/VoiceListFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/fragment/VoiceListFragment$a;->f:Lcom/comeback/data/ui/maomi/fragment/VoiceListFragment;

    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseRefreshFragment$a;-><init>(Lcom/comeback/data/base/BaseRefreshFragment;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/comeback/data/ui/maomi/bean/VoiceList;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/fragment/VoiceListFragment$a;->f:Lcom/comeback/data/ui/maomi/fragment/VoiceListFragment;

    invoke-static {v0}, Lcom/comeback/data/ui/maomi/fragment/VoiceListFragment;->m(Lcom/comeback/data/ui/maomi/fragment/VoiceListFragment;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/fragment/VoiceListFragment$a;->f:Lcom/comeback/data/ui/maomi/fragment/VoiceListFragment;

    .line 4
    iget-object v0, v0, Lcom/comeback/data/base/BaseRefreshFragment;->h:Lcom/comeback/data/base/BaseAbstractAdapter;

    .line 5
    invoke-virtual {v0}, Lcom/comeback/data/base/BaseAbstractAdapter;->c()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/fragment/VoiceListFragment$a;->f:Lcom/comeback/data/ui/maomi/fragment/VoiceListFragment;

    .line 7
    iget-object v0, v0, Lcom/comeback/data/base/BaseRefreshFragment;->h:Lcom/comeback/data/base/BaseAbstractAdapter;

    .line 8
    invoke-virtual {p1}, Lcom/comeback/data/ui/maomi/bean/VoiceList;->getData()Lcom/comeback/data/ui/maomi/bean/VoiceList$DataBeanX;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/maomi/bean/VoiceList$DataBeanX;->getData()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    return-void
.end method
