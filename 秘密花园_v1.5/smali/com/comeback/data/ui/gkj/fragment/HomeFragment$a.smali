.class public Lcom/comeback/data/ui/gkj/fragment/HomeFragment$a;
.super Lm/j;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/gkj/fragment/HomeFragment;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/gkj/bean/ConfBean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/gkj/fragment/HomeFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/gkj/fragment/HomeFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/fragment/HomeFragment$a;->e:Lcom/comeback/data/ui/gkj/fragment/HomeFragment;

    invoke-direct {p0}, Lm/j;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 0

    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/comeback/data/ui/gkj/bean/ConfBean;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/fragment/HomeFragment$a;->e:Lcom/comeback/data/ui/gkj/fragment/HomeFragment;

    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ConfBean;->getContent()Lcom/comeback/data/ui/gkj/bean/ConfBean$ContentEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ConfBean$ContentEntity;->getData()Lcom/comeback/data/ui/gkj/bean/ConfBean$ContentEntity$DataEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ConfBean$ContentEntity$DataEntity;->getSpecialNav()Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/comeback/data/ui/gkj/fragment/HomeFragment;->k(Lcom/comeback/data/ui/gkj/fragment/HomeFragment;Ljava/util/List;)V

    return-void
.end method
