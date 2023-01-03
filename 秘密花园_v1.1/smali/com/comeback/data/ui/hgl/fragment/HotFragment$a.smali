.class public Lcom/comeback/data/ui/hgl/fragment/HotFragment$a;
.super Lcom/comeback/data/base/BaseRefreshFragment$a;
.source "HotFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/hgl/fragment/HotFragment;->l(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseRefreshFragment$a<",
        "Lcom/comeback/data/ui/hgl/bean/ListBean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/comeback/data/ui/hgl/fragment/HotFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/hgl/fragment/HotFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hgl/fragment/HotFragment$a;->f:Lcom/comeback/data/ui/hgl/fragment/HotFragment;

    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseRefreshFragment$a;-><init>(Lcom/comeback/data/base/BaseRefreshFragment;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/comeback/data/ui/hgl/bean/ListBean;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/hgl/fragment/HotFragment$a;->f:Lcom/comeback/data/ui/hgl/fragment/HotFragment;

    invoke-static {v0}, Lcom/comeback/data/ui/hgl/fragment/HotFragment;->m(Lcom/comeback/data/ui/hgl/fragment/HotFragment;)Lcom/comeback/data/base/BaseAbstractAdapter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/comeback/data/ui/hgl/bean/ListBean;->getData()Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean;->getInfo()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean$InfoBean;

    invoke-virtual {p1}, Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean$InfoBean;->getList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    return-void
.end method
