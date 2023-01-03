.class public Lcom/comeback/data/ui/maomi/fragment/NovelListFragment$a;
.super Lcom/comeback/data/base/BaseRefreshFragment$a;
.source "NovelListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/maomi/fragment/NovelListFragment;->l(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseRefreshFragment$a<",
        "Lcom/comeback/data/ui/maomi/bean/NovelList;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/comeback/data/ui/maomi/fragment/NovelListFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/maomi/fragment/NovelListFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/fragment/NovelListFragment$a;->f:Lcom/comeback/data/ui/maomi/fragment/NovelListFragment;

    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseRefreshFragment$a;-><init>(Lcom/comeback/data/base/BaseRefreshFragment;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/comeback/data/ui/maomi/bean/NovelList;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/fragment/NovelListFragment$a;->f:Lcom/comeback/data/ui/maomi/fragment/NovelListFragment;

    invoke-static {v0, p1}, Lcom/comeback/data/ui/maomi/fragment/NovelListFragment;->m(Lcom/comeback/data/ui/maomi/fragment/NovelListFragment;Lcom/comeback/data/ui/maomi/bean/NovelList;)V

    return-void
.end method
