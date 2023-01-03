.class public Lcom/comeback/data/ui/km/PicItemFragment$a;
.super Lcom/comeback/data/base/BaseRefreshFragment$a;
.source "PicItemFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/km/PicItemFragment;->l(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseRefreshFragment$a<",
        "Lcom/comeback/data/ui/km/bean/PicList;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/comeback/data/ui/km/PicItemFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/km/PicItemFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/km/PicItemFragment$a;->f:Lcom/comeback/data/ui/km/PicItemFragment;

    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseRefreshFragment$a;-><init>(Lcom/comeback/data/base/BaseRefreshFragment;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/comeback/data/ui/km/bean/PicList;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/km/PicItemFragment$a;->f:Lcom/comeback/data/ui/km/PicItemFragment;

    invoke-static {v0}, Lcom/comeback/data/ui/km/PicItemFragment;->m(Lcom/comeback/data/ui/km/PicItemFragment;)Lcom/comeback/data/base/BaseAbstractAdapter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/comeback/data/ui/km/bean/PicList;->getData()Lcom/comeback/data/ui/km/bean/PicList$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/km/bean/PicList$DataBean;->getList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    return-void
.end method
